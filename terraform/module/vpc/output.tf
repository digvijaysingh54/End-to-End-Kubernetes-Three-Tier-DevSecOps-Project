output "vpc_id_output" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}
output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public_subnet[*].id
}
