output "instance-ip" {
  value = aws_instance.labfinal_instance.public_ip
}

output "instance-id" {
  value = aws_instance.labfinal_instance.id
}

output "instance-name" {
  value = aws_instance.labfinal_instance.tags["name"]
}

output "instanse-az" {
  value = aws_instance.labfinal_instance.availability_zone
}
