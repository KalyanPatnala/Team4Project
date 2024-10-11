resource "aws_key_pair" "nkp" {
  key_name   = "natwest-key-pair-team4"
  public_key = var.publickey
}
