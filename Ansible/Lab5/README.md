### install and configure ansible automation platform on control nodes , create inventories of 2 managed hosts and then perform ad-hoc commands to check functionality

##### Step 1: Install Ansible Automation Platform
Iam using Ubuntu machine as a control node 

1- Update the System:
```
sudo apt update && sudo apt upgrade -y
```

2- Install Dependencies:
```
sudo apt install software-properties-common -y
```

3- Add Ansible Repository and Install Ansible:
```
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
```

### Step 2: Configure the Ansible Control Node

1- Generate SSH Keys:
```
ssh-keygen -t rsa -b 2048
```

2-Copy SSH Key to Managed Hosts:
```
ssh-copy-id user@managed_host_1
ssh-copy-id user@managed_host_2
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6e19e622-ea64-467a-a5ef-aa140dc8f8d5" width="800" >

### Step 3: Create Ansible Inventory

1- Create an Inventory File:
```
mkdir ~/ansible
vim inventory
```

2-Add Managed Hosts to the Inventory File:
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c81c4760-eddb-4c52-bc78-d6f1949d0495" width="800" >

### Step 4: Test Connectivity Between Control and Managed nodes:

1- Ping the Managed Hosts:
```
ansible -i ~/ansible/inventory server -m ping
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e0d99792-d93e-4156-9ccb-5971b7a1b32a" width="800" >

### Step 5: Perform Ad-Hoc Commands

1- Check Disk Usage:
```
ansible -i ~/ansible/inventory server -a "df -h"
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3a806661-f1dd-4249-a945-586655633d13" width="800" >

2- Check Free Memory:
```
ansible -i ~/ansible/inventory server -a "free -m"
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/12827872-50f1-4b79-999a-6499cee74783" width="800" >

3- Check Uptime:
```
ansible -i ~/ansible/inventory server -a "uptime"
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/bfc4801a-d411-4229-9194-fc0630c3ab14" width="800" >







