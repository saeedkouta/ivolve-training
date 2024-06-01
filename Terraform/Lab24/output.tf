output "vpc_iid" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.private : subnet.id]
}

output "ec2_instance_id" {
  value = aws_instance.web.id
}

output "rds_instance_id" {
  value = aws_db_instance.database.id
}

