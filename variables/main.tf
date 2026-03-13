resource "local_file" "numero" {
  filename        = var.nombre
  content         = var.num
  file_permission = 0777
}

resource "local_file" "persona" {
  filename = var.persona.filename
  content  = var.persona.content
}

resource "local_file" "genero" {
  filename             = "genero.txt"
  content              = var.genero[0]
  file_permission      = "0400"
  directory_permission = "0600"
}

resource "local_file" "identificacion" {
  filename = "id.txt"
  content  = var.identificacion
}

resource "local_file" "almacenamiento" {
  filename = "almacenamiento.txt"
  content  = var.discos["rapido"]
}
