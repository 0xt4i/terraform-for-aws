output "public_route_table_id" {
  value       = aws_route_table.tainh_public_rt.id
  description = "The Id of the public Route Table"
}

output "private_route_table_id" {
  value       = aws_route_table.tainh_private_rt.id
  description = "The Id of the private Route Table"
}

