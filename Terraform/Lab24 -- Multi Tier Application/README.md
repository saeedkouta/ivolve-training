# Description
## This project contains Terraform configuration files to provision a multi-tier infrastructure on AWS. The infrastructure comprises an EC2 instance, a Virtual Private Cloud (VPC) with both public and private subnets, and an Amazon Relational Database Service (RDS) instance.

### Step 1: Create main.tf file

#### it contains:

#### 1- provider resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d5c14f46-6283-422b-971e-6ee481b7e086" width="1000" >

#### 2- vpc resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a3cdcb8d-dfbd-4698-8497-138c4d951b27" width="1000" >

#### 3- internet gateway resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3777060f-f8fb-4cf9-ac58-8e1a5af4e8ae" width="1000" >

#### 4-  public subnet resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/eaa37cce-4e40-4e7a-8bb2-d0067ffd852e" width="1000" >

#### 5- 2 private subnets resorce:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/684fd260-ea0c-44d8-b3c5-27aab5b17e33" width="1000" >

#### 6- EC2 resource:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d2829a1b-e6d4-4cb4-9305-d8da039071fc" width="1000" >

#### 7- route table resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/9f2ce7ae-c1e4-4ee2-ae3d-9657ae7aa4ca" width="1000" >

#### 8- rt association resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/51e3b6f0-1242-40ea-a4ad-444f7d7e3dc4" width="1000" >

#### 9- rds subnet group resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b83e169f-8c56-41f4-99da-7b9af4e61c5e" width="1000" >

#### 10- database resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/0dbffc52-eaf9-45ad-8adc-ba28c3168fcb" width="1000" >

### Step 2: Create vars.tf file

```
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
```

### Step 3: Create output.tf file
```
output "vpc_id" {
  value = aws_vpc.lab24-vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.private : subnet.id]
}

output "ec2_instance_id" {
  value = aws_instance.lab24-ec2.id
}

output "rds_instance_id" {
  value = aws_db_instance.database.id
}
```

### step 4: Run terraform commands

#### 1- terraform init:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c14f3b58-ed8f-439b-8377-12e9f2d2117b" width="700" >

#### 2- terraform plan:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8feeb51c-f599-48e9-b5b7-b902191aef50" width="700" >

#### 3- terraform apply:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/56195967-c809-433e-ab2f-adabc3c13b8f" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/184d4342-50a3-4d68-b5ea-d71677297cfd" width="700" >

### Step 5: Show the infrastructure that we made:

#### 1- the vpc:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d6f4c09b-8ad7-404c-827d-6fa30ee70877" width="700" >

#### 2- the igw:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5f6b9a59-12f3-442c-9073-ba136680d4a1" width="700" >

#### 3- the subnets:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2e92014d-2304-4275-b907-0557dd45d472" width="700" >

#### 4- the route table:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/1b9f1e96-e2b2-45b8-a7be-423478ded952" width="700" >

#### 5- the database:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ace1eac5-38f6-498c-b387-5404757073ea" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/aa9ce02c-17cb-4d48-b539-324ecb94fb30" width="700" >

#### after finishing the Lab we use destroy command to end our work:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/249fa4dd-d777-4a3b-b9ae-b0b3afb3906b" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2868f015-c9a6-405b-b86c-03a9a6b6353a" width="700" >












