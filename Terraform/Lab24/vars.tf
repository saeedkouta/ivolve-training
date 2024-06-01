variable "aws_region" {
  description = "The AWS region to deploy in"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones to use for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-04b70fa74e45c3917" 
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}

variable "db_identifier" {
  description = "The identifier for the RDS instance"
  default     = "mydb"
}

variable "db_engine" {
  description = "The database engine to use"
  default     = "mysql"
}

variable "db_engine_version" {
  description = "The version of the database engine"
  default     = "8.0.36"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "The allocated storage for the RDS instance (in GB)"
  default     = 20
}

variable "db_name" {
  description = "The name of the database"
  default     = "mydatabase"
}

variable "db_username" {
  description = "The username for the database"
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database"
  default     = "password"
}

