terraform {
  required_providers {
    aws = {
      version = "~> 4.0"
    }
  }
  #   backend "s3" {
  #     key     = "terraform.tfstate"
  #     region  = "us-east-1"
  #     bucket  = "terralabs-remote-state-01-elleryaguilar-20032026"
  #   }
}
