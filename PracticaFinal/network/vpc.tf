resource "aws_vpc" "labfinal_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    owner = var.tags.owner
    Name  = "VPC ${terraform.workspace}"
  }
}

resource "aws_subnet" "labfinal_subnet" {
  vpc_id     = aws_vpc.labfinal_vpc.id
  cidr_block = var.subnet_cidr
  tags = {
    owner = tags.owner
    Name  = "Subnet ${terraform.workspace}"
  }
}
