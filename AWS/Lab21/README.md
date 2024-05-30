### create vpc with 2 subnets , launch 2 EC2s with nginx and apache installed , and create and configure a load balancer to access the webserver

#### Step 1: Create a VPC

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a9500c61-1680-40ff-a58a-d6abc5292428" width="700" >

#### Step 2: Create IGW and attach it to the VPC

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/79cd99ad-d0b2-4f6b-b25b-46cd12a12a52" width="700" >

#### Step 3: Create Route Table

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/cd82e4ac-3285-4c2e-91b6-0c9eef20559a" width="700" >

#### Step 4: Create 2 Subnet in different AZ

###### 1- Subnet 1 in us-east-1a:
###### 2- Subnet 2 in us-east-1b:
###### 3- Attach them to the Route Table:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ef1febfa-9a8a-40b2-8990-435ffaece01d" width="700" >

#### Step 5: Create 2 Ec2s

###### 1- allow ssh , http and https:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e8bbb0bc-d0d6-4d87-8fe6-738971eeff31" width="700" >

###### 2- Create ec2-1 with nginx using this script in user data & change the HTML file:
```
#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Hello from Saeed: Nginx" | sudo tee /var/www/html/index.html
```

###### 3- Create ec2-2 with httpd using this script in user data & change the HTML file:
```
#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Hello from Saeed: Apache" | sudo tee /var/www/html/index.html
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/537a0d46-6210-4325-8c0e-63cb9f527697" width="700" >

#### Step 6: create target group and select the 2 EC2s as thargets

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/4ef41c34-3154-46c9-b9b3-380bcb0b15b0" width="700" >

#### Step 7: Create LoadBalancer and attach the Target Group to it

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/fd2d4643-1756-4888-b54e-b116f7ba05f7" width="700" >

#### Step 8: Use the ALB dns to see the websever page

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3f4a6a2a-7663-4f14-9cde-fe1889b35dc7" width="700" >

Refresh the page

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e8211db7-1ca9-48cf-bd49-f4a950af18dc" width="700" >










