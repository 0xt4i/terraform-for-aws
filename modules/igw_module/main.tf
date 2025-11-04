resource "aws_internet_gateway" "tainh_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "Lab01-igw"
  }
}