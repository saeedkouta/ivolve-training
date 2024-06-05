# Description
## Objective: Use Helm Chart to deploy and manage applications in an OpenShiftcluster. Explore Helm charts for common services. Create a new Helm chart for Nginx. Deploy the Helm chart and verify the deployment.Access the Nginx server.Delete nginx release.

### Step 1: install helm
```
sudo apt update
sudo apt-get install snapd
sudo snap install helm --classic
helm version
```
or
```
sudo apt update
sudo apt-get install apt-transport-https --y
sudo apt-get install curl --y
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
```

### Step 2: Create Helm Chart

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e237263d-d9b8-4490-b84d-11a0548983bb" width="1000" >

### Step 3: edit the values file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/24e8f755-003d-4965-8755-5a6afe58bd37" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5e12ce43-92dd-4f98-bbf8-867cdda047bf" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/68d46eeb-142b-4bdb-af88-9122a7dddc56" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5f488aa9-c9d5-4018-bdbb-1e3566d99486" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/29a9343c-74f0-4a0c-bdd5-19194d510de4" width="1000" >

### Step 4: install nginx using Helm Chart

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/066251c3-dff9-481e-b536-8d7233d368ad" width="1000" >

### Step 5: verify the Deployment and the service

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a2d6e82c-deea-4923-b9e3-65e44f6e32a0" width="1000" >

### Step 6: verify the nginx page is working

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3d022a24-3a0d-4a2b-8957-e3625008f504" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/dca96a59-a637-44af-93ad-b81e165bdd0a" width="1000" >

### Step 7 : to delete the Chart use

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/363b5588-e55c-40df-86aa-06e9a4cdb771" width="1000" >





