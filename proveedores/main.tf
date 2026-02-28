resource "local_file" "password" {
  content              = "nolodire"
  filename             = "password.txt"
  file_permission      = 0400
  directory_permission = 0600
}

resource "random_string" "iac_random" {
  length      = 10
  min_upper   = 5
  special     = true
  min_lower   = 1
  min_numeric = 1
  min_special = 1
}
