module "network-module" {
  source      = "./network"
  vpc_cidr    = lookup(var.vpc_cidr, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  tags        = var.tags
}


module "infra-module" {
  source        = "./infra"
  ami           = lookup(var.ami, terraform.workspace)
  subnet_id     = module.network-module.out-subnet-id
  instance_type = lookup(var.instancia, terraform.workspace)
  tags          = var.tags
}
