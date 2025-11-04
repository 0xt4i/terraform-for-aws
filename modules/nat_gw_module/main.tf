//Elastic IP for NAT Gateway
resource "aws_eip" "tainh_nat_eip" {
  domain = "vpc"
}

//NAT Gateway
resource "aws_nat_gateway" "tainh_nat_gw" {
  allocation_id = aws_eip.tainh_nat_eip.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "Lab01-nat-gw"
  }
}