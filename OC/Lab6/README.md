# description
## Create a namespace called nti and Apply resource quota to limit resource usage within the namespace. Create a Deployment in this namespace for the MySQL pod that uses the ConfigMap and Secret.DefineMySQL database name and user in a ConfigMap. Store the MySQL root password and user password in a Secret, Resources Requests: CPU: 0.5 vcpu Mem: 1G, Resources Limits: CPU: 1 vcpu Mem:2G. Exec into the MySQL pod and verify the MySQL configuration.

#### Step 1: Create the Namespace

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c53b6446-4212-486d-8661-91c1ac7ed5fd" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2d0fd9c4-a9e7-462b-b2bc-19046f610501" width="700" >

#### Step 2: Apply Resource Quota

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/321313ff-d393-4d29-8fd0-743257042362" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b438307f-53f0-4695-b01e-6c270e96ff29" width="700" >

#### Step 3: Create a ConfigMap for MySQL

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ddb4078f-4e2b-4892-9f8e-501299979de0" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/fbf8f78a-3f24-46c6-8daf-89530bd9a282" width="700" >

#### Step 4: Create a Secret for MySQL Passwords

create encripted password

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/bedbfcff-6835-4d25-b771-a6ed3d682796" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5e7d2ada-fb03-427f-bdf2-d8e01d67b61b" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/893f0f8a-2adc-4359-a649-96ebb46de0a1" width="700" >

#### Step 5: Create the MySQL Deployment

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/11b7e71d-a0d1-4514-9d1f-010c10b55b45" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/0206dfb7-bd33-4677-831b-658ce5916118" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e919f49a-18b3-46c4-8ca2-e23bb4818d75" width="700" >

#### Step 6: 6. Verify the MySQL Configuration

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5de8af04-6e4e-4265-8a46-1d142d440be8" width="700" >




