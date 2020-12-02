output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "public_subnets" {
  description = "The public subnet ID of the VPC"
  value       = [aws_subnet.subnet_public.id]
}

output "public_route_table_ids" {
  description = "The public route table ID"
  value       = [aws_route_table.rtb_public.id]
}

output "public_instance_ip" {
  description = "The public instance IP"
  value       = aws_instance.webInstance.public_ip
}

output "public_instance_dns" {
  description = "DNS name of the instance"
  value       = aws_instance.webInstance.public_dns
}
output "instance_id" {
  description = "The instance ID"
  value       = aws_instance.webInstance.id
}

output "private_key_pem" {
  description = "Generated private key pem"
  value       = tls_private_key.keypair.private_key_pem
}