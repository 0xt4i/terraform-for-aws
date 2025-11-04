//key pair
resource "aws_key_pair" "tainh_auth" {
  key_name   = "tainhkey"
  public_key = file("~/.ssh/id_ed25519.pub")
}
