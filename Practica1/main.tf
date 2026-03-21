resource "aws_s3_bucket" "practica1_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "Bucket Practica 1"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_access" {
  bucket = aws_s3_bucket.practica1_bucket.id

  block_public_acls   = true
  block_public_policy = true

}

resource "aws_s3_bucket_ownership_controls" "bucket_owner" {
  bucket = aws_s3_bucket.practica1_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.bucket_owner, aws_s3_bucket_public_access_block.bucket_access]
  bucket     = aws_s3_bucket.practica1_bucket.id
  acl        = "private"
}

resource "aws_s3_object" "s3_key" {
  bucket = aws_s3_bucket.practica1_bucket.id
  key    = "id_rsa.pem"
  source = local_sensitive_file.myPrivateKey_local.filename
}

output "s3_key_url" {
  description = "URL del objeto en S3"
  value       = "https://${aws_s3_bucket.practica1_bucket.bucket_regional_domain_name}/${aws_s3_object.s3_key.key}"
}

resource "aws_vpc" "lab_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "lab-${var.student_name}"
    Environment = "Dev"
  }
}

output "vpc_id" {
  description = "ID de la VPC"
  value       = aws_vpc.lab_vpc.id
}
