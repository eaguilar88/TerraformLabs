resource "tls_private_key" "myPrivateKey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "myPrivateKey_local" {
  content  = tls_private_key.myPrivateKey.private_key_pem
  filename = "id_rsa.pem"
}
