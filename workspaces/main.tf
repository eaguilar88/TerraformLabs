module "server" {
  source        = "./modules"
  ami           = lookup(var.ami, terraform.workspace)
  server_region = lookup(var.region, terraform.workspace)
}
