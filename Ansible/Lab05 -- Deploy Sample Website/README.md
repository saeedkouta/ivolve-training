# Description
## write an ansible playbook to automate the configuration of a web server configure apashe/nginx, deploy a sample website and ensure proper security settings

### Step 1: Create Ansible Inventory

#### 1- Create an Inventory File:
```
mkdir ~/ansible
mkdir ~/ansible/lab5
vim inventory
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6e19e622-ea64-467a-a5ef-aa140dc8f8d5" width="800" >
  
### Step 2: Create configuration file

#### 1- Create ansible.cfg file:
```
vim ansible.cfg
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/79be3603-27dc-427e-9585-701f855cb2b1" width="800" >

### Step 3:Create a secret file

#### 1- Create secret.yml file:
```
ansible-vault create secret.yml
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/bf4053a0-2cab-495c-bc5c-4bb5c863a9f8" width="800" > <br />

#### 2- write the become pass to make ansible able to use sudo in the managed node

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b2ef3c45-d7f8-4551-9163-d468b39c89be" width="800" >

if you want to edit it use:
```
ansible-vault edit secret.yml
```
you can't access the file by the usual way because the data in this file is encrypted

if trying vim secret.yml

this is the result 

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/0b169b6c-4ac6-4342-90c6-85019b45efc8" width="800" >

### Step 4: Create Nginx configuration file:
```
vim nginx
```

put this configuration on the file
```
server {
    listen 80;
    [host-ip-adress];

    location / {
        root /var/www/html;
        index index.html;
    }
```

### Step 5: Create a playbook file:

1- Create Playbook.yml file:
in the first identify the playbook name , host , and make become yes <br />
then write the path of the secret file <br />
```
---
- name: lab5
  hosts: server
  become: yes
  vars_files:
    - ~/ansible/lab5/secret.yml
```

#### 2- Create Tasks:

2.1. Install nginx task
```
- name: Install nginx
      yum:
        name: nginx
        state: latest
```
<br />

2.2. Remove default configuration :
```
- name: Remove default nginx configuration
      file:
        path: /etc/nginx/sites-enabled/default
        state: absent
```
<br />

2.3. Copy nginx configuration file
```
- name: Copy nginx configuration file
      copy:
        src: ~/ansible/lab5/nginx
        dest: /etc/nginx/sites-available/nginx
        owner: saeed
        group: root
        mode: '0644'
```
<br />

2.4. Enable website configuration
```
    - name: Enable website configuration
      file:
        src: /etc/nginx/sites-available/nginx
        dest: /etc/nginx/sites-enabled/nginx
        state: link
```
<br />

2.5. Ensure nginx is running:
```
- name: Ensure nginx is running
      systemd:
        name: nginx
        state: started
        enabled: yes
```
<br />

2.6. Create HTML file:
```
- name: Create HTML file
      copy:
        content: "<h1>Hello from saeed</h1>"
        dest: /usr/share/nginx/html/index.html
        owner: saeed
        group: root
        mode: '0644'
```
<br />

that make the full playbook is:
```
---
- name: lab5
  hosts: server
  become: yes
  vars_files:
    - ~/ansible/lab5/secret.yml

  tasks:
    - name: Install nginx 
      yum:
        name: nginx
        state: latest
    
    - name: Remove default nginx configuration
      file:
        path: /etc/nginx/sites-enabled/default
        state: absent

    - name: Copy nginx configuration file
      copy:
        src: ~/ansible/lab5/nginx
        dest: /etc/nginx/sites-available/nginx
        owner: saeed
        group: root
        mode: '0644'

    - name: Enable website configuration
      file:
        src: /etc/nginx/sites-available/nginx
        dest: /etc/nginx/sites-enabled/nginx
        state: link

    - name: Ensure nginx is running
      systemd:
        name: nginx
        state: started
        enabled: yes
   
    - name: Create HTML file
      copy:
        content: "<h1>Hello from saeed</h1>"
        dest: /usr/share/nginx/html/index.html
        owner: saeed
        group: root
        mode: '0644'
```
<br />

### Step 6: Run the playbook

#### 1- run the playbook.yml file:

```
ansible-playbook playbook.yml -i inventory --ask-vault-pass
```


#### 2- write the Vault password

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/21632ec0-31ee-44e9-be03-fc1ca88fbf72" width="800" >

### Step 7: ensure that the Web Page is running

in the broswer in the url bar write the ip of the managed node:
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ebaff5e7-45f4-469d-ac0f-14ca55c3f188" width="800" >







