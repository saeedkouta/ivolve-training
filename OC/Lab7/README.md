# description
## deploy NGINX with 3 replicas . create a service to expose nginx deployment user port forwoding to access nginx service locally update nginx image to apache view deployment's rollout history . rollback nginx deployment to the previous image version and monitor pod status to confirm successful rolback

#### Step 1: Deploy NGINX with 3 replicas

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b3f50a15-2f85-4069-96d9-0b62baabe631" width="700" >

#### Step 2: Create a service to expose the NGINX deployment

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a1709aaf-f189-4f62-bdb3-2dee659dcab6" width="700" >

#### Step 3: Apply them

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/36e43a61-c31b-437d-aed6-0f6e2797325c" width="700" >

#### Step 4: Expose the service to create a route and test by using port-forward
```
kubectl expose service/nginx-service
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b4a311f2-314f-474b-9c0f-02db5946ae3c" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8fc8274d-6f4b-4e93-8318-64e7de47cefc" width="700" >

#### Step 4: Update the NGINX image to Apache and test by using port-forward

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ae2d169d-14f0-4b5f-aae1-6327a7342c53" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b3b32d8d-c2b8-43c8-b51a-fc9f75195fb7" width="700" >

#### Step 5: Rollback the NGINX deployment to the previous image version and test by using port-forward

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/04520ac9-f93f-49d7-a165-5ef419ef33fa" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/71ed39b3-6130-4090-9333-5a7f7e7838e9" width="700" >














