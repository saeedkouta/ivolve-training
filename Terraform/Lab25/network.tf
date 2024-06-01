resource "aws_vpc" "lab25-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
     Name = "lab25-vpc"  
   }
}

resource "aws_internet_gateway" "lab25-igw" {
  vpc_id = aws_vpc.lab25-vpc.id
  tags = {
    Name = "lab25-igw"
  }
}

resource "aws_subnet" "lab25-public-sub" {
  vpc_id            = aws_vpc.lab25-vpc.id
  cidr_block        = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zones[0]
  tags = {
     Name = "lab25-public-subnet"  
   }
}

resource "aws_subnet" "lab25-private-sub" {
  for_each = {
    for index, cidr in var.private_subnet_cidrs : index => {
      cidr_block        = cidr
      availability_zone = var.availability_zones[index]
    }
  }
  vpc_id            = aws_vpc.lab25-vpc.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = "lab25-private-subnet-${each.key}"
  }
}
