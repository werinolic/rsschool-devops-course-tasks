resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "k3s-igw"
  }
}

resource "aws_eip" "nat_eip" {
}
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public[1].id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name = "NAT Gateway"
  }
}