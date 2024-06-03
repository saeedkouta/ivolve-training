# description
## create a openshift deployment named my-deployment with 1 replica using the nginx image exec into the nginx pod and create a file at /usr/share/nginx/html/hello.txt. delete the nginx pod and wait for the deployment to create anew pod  ... create presistant volume claim. modeify the deployment to attach the pvc to the pod at /usr/share/nginx/html/hello.txt. and repeat the previous steps and verify file persists across pod deletaions

#### Step 1: Create an OpenShift Deployment

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f1404613-0296-4d78-b13f-2a2cbae5974d" width="700" >

apply it using:
```
kubectl apply -f deployment.yml
```

#### Step 2: Exec into the NGINX Pod and Create a File then delete it and show the file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/623938f3-6f49-4538-bf50-3f6d8527f4c7" width="700" >

#### Step 3: Create a Persistent Volume Claim (PVC)

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/0f4f8577-0138-44fe-bc9f-08617e31d5a8" width="700" >

Apply the PVC:
```
kubectl apply -f pvc.yml
```

#### Step 4: Modify the Deployment to Attach the PVC

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c7f65dad-db0c-4487-bb45-fabcbdda38e5" width="700" >

apply it using:
```
kubectl apply -f deployment.yml
```

#### Step 6: Repeat Previous Steps to Verify Persistence

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/47d034b6-9339-4ae2-884a-9754160058cf" width="700" >






