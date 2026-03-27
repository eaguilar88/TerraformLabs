output "instance-ip" {
  value = module.infra-module.instance-ip
}

output "instance-id" {
  value = module.infra-module.instance-id
}

output "instance-name" {
  value = module.infra-module.instance-name
}

output "instance-az" {
  value = module.infra-module.instance-az
}

output "vpc-id" {
  value = module.network-module.out-vpc-id
}


output "subnet-id" {
  value = module.network-module.out-subnet-id
}

output "owner" {
  value = var.tags.owner
}
