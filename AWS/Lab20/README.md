### create private subnet and launch EC2 , configure security groups, connect to the instance using bastion host

#### Step 1: Set Up the VPC and Subnets 

1- Create a VPC:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/71845a0d-3a38-4bcf-8f49-98e05c6924c7" width="800" >

2- Create Subnets:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6766e448-8c62-44f1-8896-8723d75a2c1f" width="800" >

2.1. Create Public Subnet:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/dcb3862d-512b-46df-b6ce-6c953a3580e8" width="800" >

2.2. Create Private Subnet:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f8909e3a-21a9-4a22-b064-1572b37d2f4e" width="800" >

#### Step 2: Create Route Tables and IGW

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f3c878c4-628a-45ac-a8c9-afb96473866c" width="800" >

1- Create Public Route Table and Associate the public subnet with it

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/37c0109f-8c6e-467c-b787-b38e63c1f5ff" width="800" >

2- Create Private Route Table and Associate the private subnet with it

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/dcd2881a-d144-4e90-a898-7ae5aba2ef15" width="800" >

3- Creat internet Gate Way and attach it to the vpc and add the route to the Public subnet

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f18ad2d1-9f17-4d66-9052-1468d90acf0b" width="800" >

#### Step 3: Create EC2s

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c4f366a8-8dd3-4670-b479-2714a5922b38" width="800" >

1- Create Bastion Host:
 
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/9a5a2dfd-8b09-4881-8c1e-98e8e3a2b3b0" width="800" >

in the Creation Select A Key-pair , the Vpc , the Public Subnet and Create Security Group That Allow Ssh From your Host ip

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e5192ae7-4736-403d-9ea8-a2bbc34809b9" width="800" >

2-. Create Private Ec2:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3d4c6478-d9ae-4468-a132-e99a5e7c11fb" width="800" >

in the Creation Select the Same Key-pair of the Bastion Host

Then select the Vpc , the private Subnet and Create Security Group That Allow Ssh From Public Subnet ip Range

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/236e2888-8e3c-4117-919e-6fb4b967e5fd" width="800" >

#### Step 4: Connect from your Host to the Bastion Host

1- Ssh using this Command

```
ssh -i /path/to/your-key-pair.pem ec2-user@bastion-host-public-ip
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/26b9763e-67d3-4058-95ba-a30f92e347e4" width="800" >

#### Step 5: Copy the Key to the Bastion Host

1- Use The secure Copy Command:
```
scp -i /path/to/your-key-pair.pem /path/to/your-key-pair.pem ec2-user@<BastionHost-Public-IP>:/home/ec2-user/
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/44f98d39-6f80-4c69-93ca-7429fbfa9e90" width="800" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d46ac127-849b-4faa-802e-1eed4f70a09d" width="800" >

2- give the Key A permission to use ssh
```
chmod 400 key.pem
```

#### Step 6: Connect from Bastion Host to the Private Ec2

1- Here We Will use the Private ip
```
ssh -i /home/ec2-user/Saeed_KEY.pem ec2-user@<PrivateInstance-Private-IP>
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/1180c144-fb5b-4d19-8e97-b9e9ba273606" width="800" >









 







