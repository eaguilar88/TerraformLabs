module "network-module" {
  source      = "./network"
  vpc_cidr    = lookup(var.vpc_cidr, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  tags        = var.tags.owner
}


module "infra-module" {
  source        = "./infra"
  ami           = lookup(var.ami, terraform.workspace)
  subnet_id     = lookup(var.subnet_cidr, terraform.workspace)
  instance_type = lookup(var.instancia, terraform.workspace)
  tags          = var.tags.owner
}
