resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public[0].id
  key_name               = var.key_pair_name
  security_groups        = [aws_security_group.bastion_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "BastionHost"
  }
}
