# Description
## •Objective: Create a deployment for Jenkins with an initcontainer that sleeps for 10 seconds before the Jenkins container starts.Use readiness and livenessprobes to monitor Jenkins.Create a NodePortservice to expose Jenkins.Verify that the initcontainer runs successfully and Jenkins is properly initialized. What is the differnetbetween  readiness & liveness , init& sidecar container.

### Step 1: Create the Deployment file that contains the jenkins container and the init container

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/80e58c8c-8ea1-4979-9cb1-cc7fdf1b23a6" width="1000" >

### Step 2: Create service file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d8a16281-3858-4815-bd7e-76d670cc5176" width="1000" >

### Step 3: Apply them

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/78a11272-6520-4e1b-b3fd-ff50e09bdda8" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/7e8df332-f298-4375-ae82-a279d25a0f7d" width="1000" >

### Step 4: Describe the pod

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e1091f01-3760-421d-a14e-d9eb3b32b6c8" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f30d7d4b-7f7a-486c-a994-3bc2f62aed19" width="1000" >

### Step 5: Use port-forward to see the jenkins page:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/124d84ab-4457-4e4d-96da-b28839761115" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e9ace0ce-8bd6-4d59-91eb-21db7b559c01" width="1000" >


