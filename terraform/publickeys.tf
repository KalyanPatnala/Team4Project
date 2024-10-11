resource "aws_key_pair" "nkp" {
  key_name   = "natwest-key-pair-nik1"
  public_key = var.publickey
}