provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "lab24-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
     Name = "lab24-vpc"  
   }
}

resource "aws_internet_gateway" "lab24-igw" {
  vpc_id = aws_vpc.lab24-vpc.id
  tags = {
    Name = "lab24-igw"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.lab24-vpc.id
  cidr_block        = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zones[0]
  tags = {
     Name = "lab24-public-subnet"  
   }
}

resource "aws_subnet" "private" {
  for_each = {
    for index, cidr in var.private_subnet_cidrs : index => {
      cidr_block        = cidr
      availability_zone = var.availability_zones[index]
    }
  }
  vpc_id            = aws_vpc.lab24-vpc.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = "private-${each.key}"
  }
}

resource "aws_instance" "lab24-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  tags = {
   Name = "lab24-ec2"
  }
}

resource "aws_route_table" "lab24-public-rt" {
  vpc_id = aws_vpc.lab24-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab24-igw.id
  }
  tags = {
    Name = "lab24-public-rt"
  }
}

resource "aws_route_table_association" "lab24-public-rt-assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.lab24-public-rt.id
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = "new-rds-subnet-group"
  subnet_ids  = [for subnet in aws_subnet.private : subnet.id]
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
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  skip_final_snapshot = true
}


