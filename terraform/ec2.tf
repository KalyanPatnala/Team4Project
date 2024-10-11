
resource "aws_instance" "vm1" {
  count                  = 3
  ami                    = "ami-033c6909beae3b794"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.nkp.key_name
  vpc_security_group_ids = [aws_security_group.sg1.id]
  subnet_id              = aws_subnet.sn1.id
  tags = {
    "Name" = "Natwest-Vm-nik-Ansible-${count.index}"
  }
  associate_public_ip_address = true
}
output "PublicIpAddress" {
  value = aws_instance.vm1.*.public_ip
}