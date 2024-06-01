output "vpc_id" {
  value = aws_vpc.lab25-vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.lab25-public-sub.id
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.lab25-private-sub : subnet.id]
}

output "ec2_instance_id" {
  value = aws_instance.lab25-ec2.id
}

output "rds_instance_id" {
  value = aws_db_instance.database.id
}

