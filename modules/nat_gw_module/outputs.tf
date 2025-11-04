output "nat_gw_id" {
  value = aws_nat_gateway.tainh_nat_gw.id
  description = "The Id of the NAT Gateway"
}