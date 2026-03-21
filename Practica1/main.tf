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

variable "bucket_name" {
  type        = string
  description = "Nombre del bucket de la práctica 1"
  default     = "terralabs-elleryaguilar-practica1-20032026"
}

output "s3_key_url" {
  description = "URL del objeto en S3"
  value       = "https://${aws_s3_bucket.practica1_bucket.bucket_regional_domain_name}/${aws_s3_object.s3_key.key}"
}
