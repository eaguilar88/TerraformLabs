resource "aws_instance" "demo-import" {
  ami               = "ami-033b95fb8079dc481"
  instance_type     = "t3a.nano"
  availability_zone = "us-east-1d"
  subnet_id         = "subnet-084b6865e54974ba4"
}
