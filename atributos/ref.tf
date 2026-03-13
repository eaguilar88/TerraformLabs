resource "local_file" "archivo2" {
  content    = "wololo"
  filename   = "archivo2.txt"
  depends_on = [local_file.archivo1]
}

resource "local_file" "archivo1" {
  filename = "archivo1"
  content  = "John Age of Empires"
}
