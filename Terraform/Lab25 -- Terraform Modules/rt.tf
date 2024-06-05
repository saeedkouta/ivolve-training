resource "aws_route_table" "lab25-public-rt" {
  vpc_id = aws_vpc.lab25-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab25-igw.id
  }
  tags = {
    Name = "lab25-public-rt"
  }
}

resource "aws_route_table_association" "lab25-public-rt-assoc" {
  subnet_id      = aws_subnet.lab25-public-sub.id
  route_table_id = aws_route_table.lab25-public-rt.id
}


