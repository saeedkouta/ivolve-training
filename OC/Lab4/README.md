# description:
## Build image from Dockerfile https://github.com/IbrahimmAdel/static-website.gitand push it to your DockerHub. Create a deployment using this custom NGINX image.Create a service to expose the deployment.Define a networkpolicy that allow traffic to the NGINX pods only from other pods within the same namespace.Enable the NGINX Ingress controller using Minikube addons. Create an Ingress resource. Update /etc/hosts to map the domain to the Minikube IP address. Access the custom NGINX service via the Ingress endpoint using the domain name. 

#### Step 1:Build the Docker Image and Push to DockerHub

1- Clone the repository:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/68dfc80e-dfd3-4bf2-a037-0ed071d20395" width= "700" >

2- Build the Docker image:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/9c0c1ed3-4c95-4175-8d9e-b50f3ef4802c" width= "700" >

3- Push the image to DockerHub:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3d086afb-52aa-4c9a-ae25-5fafc00c7bee" width= "700" >

#### Step 2: Create a Deployment and Service

1- Create a Kubernetes Deployment:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6d0a07da-851e-4d24-a8ac-c48c87a071e2" width= "700" >

apply it using :
```
kubectl apply -f deploy.yml
```

2- Create a Service:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/eb1fd981-c24e-4b57-931b-4584095038a0" width= "700" >

apply it using :
```
kubectl apply -f service.yml
```

#### Step 3: Define NetworkPolicy

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ad61c667-3034-47ab-81e5-c130e2e6266c" width= "700" >

apply it using :
```
kubectl apply -f network.yml
```

#### Step 4: Enable NGINX Ingress Controller

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8fa0a8e3-8441-47bc-a1ab-9fc49c32cf68" width= "700" >

#### Step 5: Create an Ingress Resource

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8a97a471-2a60-45e4-8842-d73bf77dc0fc" width= "700" >

apply it using :
```
kubectl apply -f ingress.yml
```

#### Step 6: Update /etc/hosts

using minikube ip and the host that we wirte in the ingress file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d079f988-9be9-49a2-afc9-0c6b9f7c8aa6" width= "700" >

#### Step 7: Access the NGINX Service

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/7d11aa9d-3a04-4aa1-845d-25a60cdae852" width= "700" >































