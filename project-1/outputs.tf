output "ec2_public_instance_ip" {
  description = "Public IP from EC2 module"
  value       = module.ec2_module.public_instance_ip
}