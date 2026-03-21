resource "local_file" "module-demo" {
  filename        = var.in-filename
  content         = var.in-file-content
  file_permission = var.in-file-permission
}
