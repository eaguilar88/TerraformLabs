locals {
  filename = "test.txt"
}

module "file-module" {
  source             = "./file-module"
  in-filename        = local.filename
  in-file-content    = "Este es el archvio #1 de"
  in-file-permission = 400
}

module "file-module-dos" {
  source             = "./file-module"
  in-filename        = "dos.txt"
  in-file-content    = "Este es el archivo #2 de"
  in-file-permission = 600
}

