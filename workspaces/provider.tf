provider "aws" {
  region  = lookup(var.region, terraform.workspace)
  profile = "cenfotec"
}
