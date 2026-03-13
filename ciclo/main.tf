resource "local_file" "file" {
  filename        = var.filename
  file_permission = 0777
  content         = "bye ..."

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
  }
}
