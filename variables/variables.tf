variable "nombre" {
  type        = string
  default     = "Ellery"
  description = "Mi nombre"
}

variable "num" {
  type        = number
  default     = 100
  description = "Mi numero"
}

variable "persona" {
  type = map(any)
  default = {
    filename = "persona.txt"
    content  = "Ellery Saul Aguilar"
  }
  description = "A map of names"
}

variable "genero" {
  type    = list(string)
  default = ["masculino", "femenino", "otros"]
}

variable "identificacion" {
  type = number
}
variable "discos" {
  type        = map(any)
  description = "default de almacenamiento"
}
