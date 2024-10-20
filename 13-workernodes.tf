resource "aws_instance" "worker" {
  count                  = var.worker_instance_count
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private[1].id
  key_name               = var.key_pair_name
  security_groups        = [aws_security_group.worker_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_instance_profile.name

  tags = {
    Name = "k3s-worker-${count.index + 1}"
  }
}
