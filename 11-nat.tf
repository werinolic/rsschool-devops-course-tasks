data "aws_ami" "nat_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-vpc-nat-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "nat" {
  ami                         = data.aws_ami.nat_ami.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public[1].id
  key_name                    = var.key_pair_name
  security_groups             = [aws_security_group.nat_sg.id]
  associate_public_ip_address = true
  source_dest_check           = false

  tags = {
    Name = "NATInstance"
  }
}
