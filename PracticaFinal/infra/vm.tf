resource "aws_instance" "labfinal_instance" {
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = var.subnet_id
  tags = {
    owner = var.tags.owner
    Name  = "${terraform-workspace}-vm"
  }

}
