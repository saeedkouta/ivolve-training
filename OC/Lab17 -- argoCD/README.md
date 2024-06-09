# Description
## Objective: What is a k8s operator? Deploy ArgoCD using Operators. Explore the capabilities of Operators for application lifecycle management

### Step 1: What is K8s Operator?

### [K8s Operator](https://github.com/saeedkouta/ivolve-training/blob/main/OC/Lab17%20--%20argoCD/K8s-Operator.md)

### Step2 : Create an argoCD NameSpace and Install it

#### 1- Create argoCD ns:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/91fdf47b-83ee-465b-ac10-f747290e8e9f" width="1000" >

#### 2- Install argoCD:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d526b0a5-3ad0-4852-884f-0de78828776f" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/603c60b5-b1c6-4bf1-af7c-7072b1f28931" width="1000" >

#### 3- Show the Created Resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c2294aa4-94c7-4f04-aa39-81bf8422f892" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f0a33378-d551-41d4-bb95-afe4667af39a" width="1000" >

### Step 3: Access argoCD GUI:

#### 1- Using Port-forward:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/bb584c8b-5d9d-4456-9269-666291e981ab" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/1af65bf5-14d5-42ab-a512-182620d96331" width="1000" >

#### 2- use this command to generate password to access the argocd console:

```bash
oc get secret argocd-initial-admin-secret -n argocd -o=jsonpath='{.data.password}' | base64 -d
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d4e54f20-f1ba-4fb3-99b4-c0e1059cf99b" width="1000" >

#### 3- Use the password with username admin to access the console:

### Step 4: Creating Apps Via UI

#### 1- Create simple Deployment adn svc files and add them into repo

#### deployment.yml
``` yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: lab17
spec:
  replicas: 1
  revisionHistoryLimit: 3
  selector:
    matchLabels:
      app: lab17
  template:
    metadata:
      labels:
        app: lab17
    spec:
      containers:
      - image: gcr.io/heptio-images/ks-guestbook-demo:0.2
        name: lab17
        ports:
        - containerPort: 80
```

#### service.yml
```yaml
apiVersion: v1
kind: Service
metadata:
  name: lab17
spec:
  ports:
  - port: 80
    targetPort: 80
  selector:
    app: lab17
```

#### 2- After logging click on +NEW APP:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a5612dc9-019f-41e9-b0f7-5a541efb3302" width="1000" >

#### 3- adding the App Configuration

#### We can make the sync automatic but here will choose manual

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/702db2ab-41bd-46db-b7bc-28be4577c72e" width="1000" >

#### choose the repo , path on it and the cluster name and the ns then click create

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/53914dfe-24d7-421b-aa8e-1262d11d5ba5" width="1000" >

### Step 4: Sync the App

#### After Creating the app Click on it:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ef1ff07a-c57d-4334-a955-62f2d6266950" width="1000" >

#### Click on sync Then

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d5b4e4d9-81e8-488c-8e37-d2d303f8bb94" width="1000" >

#### The App synced and healthy:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e89b404e-ecda-4d1a-b870-cd259ce91f81" width="1000" >

### Step 5: Shows the Created Resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8859e033-fdf8-4c23-99be-4287a8357f38" width="1000" >

### Step 6: Using port-forward to see the webpage:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/86959a9c-118b-40e6-8a81-8e54308d34ff" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b010afe7-0010-4a2f-9a5b-9f1e326e24fb" width="1000" >







