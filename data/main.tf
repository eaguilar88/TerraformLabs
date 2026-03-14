data "local_file" "os" {
  filename = "/etc/os-relesease"
}

output "os-version" {
  value = data.local_file.os.content
}
