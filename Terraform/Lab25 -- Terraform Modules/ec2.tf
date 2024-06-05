resource "aws_instance" "lab25-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.lab25-public-sub.id
  tags = {
   Name = "lab25-ec2"
  }
}
