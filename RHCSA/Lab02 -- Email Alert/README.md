# Description
## Craete a Shell script that automates checking disk storage usage and sends an email alert if uasge exceeds a specified threshold

### Step 1: Install msmtp Package
```
sudo apt update
sudo apt-get install msmtp -y
```
#### Choose No 

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/9dbe06db-9b66-4f37-955b-ccb6181f79ce" width="1000" >

### Step 2: onfigure ~/.msmtp file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6302b497-fa43-4bac-b50c-e55d6c5e601d" width="1000" >

#### Make sure to secure the .msmtprc file so only you can read it:
```
chmod 600 ~/.msmtprc
```

#### You can create app password using the Steps on this link:

[Create App Password](https://arnaudr.io/2020/08/24/send-emails-from-your-terminal-with-msmtp/)

### Step 2: Create lab2-script.sh file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/817a2fb1-fe6e-49a8-b6b9-d86df5322785" width="1000" >

#### Make the Script Executable
```
chmod +x lab2-script.sh
```

### Step 3: Create Tmp file to store the disk usage report

#### go to /tmp/lab2-script.txt

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/462d79bd-fd2c-486e-977e-ea639f531ba3" width="1000" >

### Step 4: Schedule with Cron 
```
0 * * * * /lab2/lab2-script.sh
```

### Step 5: Run the Script 

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ec017a65-dd50-4103-89e7-4f71ee504931" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/bd6d27fe-8505-43f7-8674-714641a0c00a" width="1000" >

### Step 6: Check your Mail

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b9569d60-6b41-4589-a6a4-3420b3628806" width="1000" >


