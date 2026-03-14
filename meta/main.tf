resource "local_sensitive_file" "tempfile" {
  filename       = "${path.module}/files/${var.users[count.index]}.txt"
  content_base64 = base64encode("password: abc-123")
  count          = length(var.users)
}

resource "local_sensitive_file" "tempfile_for" {
  for_each = toset(var.users)
  filename = "/for_files/${each.value}.txt"
  content  = "password: S3cr3tP@ssw0rd"
}


######################## Adicional hecho por mi ###########################
resource "local_sensitive_file" "secret_file" {
  filename       = "${path.module}/secrets/${var.users[count.index]}.txt"
  content_base64 = base64encode(random_string.password[count.index].id)
  count          = length(var.users)
}

# resource "local_sensitive_file" "secret_file_for" {
#   for_each = toset(var.users)
#   filename = "/for_files/${each.value}.txt"
#   content  = random_string.password[each.value].id
# }

resource "random_string" "password" {
  length      = 16
  min_upper   = 1
  special     = true
  min_lower   = 1
  min_numeric = 1
  min_special = 1
  count       = length(var.users)
}
