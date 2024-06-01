resource "aws_db_subnet_group" "lab25_rds_subnet_group" {
  name        = "rds-subnet-group"
  subnet_ids  = [for subnet in aws_subnet.lab25-private-sub : subnet.id]
}

resource "aws_db_instance" "database" {
  identifier              = var.db_identifier
  engine                  = var.db_engine
  engine_version          = var.db_engine_version
  instance_class          = var.db_instance_class
  allocated_storage       = var.db_allocated_storage
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.lab25_rds_subnet_group.name
  skip_final_snapshot     = true
}
