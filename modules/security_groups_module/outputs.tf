output "default_security_group_id" {
  value       = aws_security_group.tainh_default_sg.id
  description = "The Id of the Default Security Group"
}

output "public_security_group_id" {
  value       = aws_security_group.tainh_public_sg.id
  description = "The Id of the Security Group"
}

output "private_security_group_id" {
  value       = aws_security_group.tainh_private_sg.id
  description = "The Id of the Security Group"
}