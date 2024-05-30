### use ansible vault to encrypt playbook sensitive information, such as database passwords, and incorporate the encrypted data into an Ansible playbook

#### Step 1: Create secret file using ansible-vaults

1- using this command:
```
ansible-vault create secrets.yml
```
add become password , user and password of mysql user
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6a5ed28e-87fc-4025-9669-2005348ec5a8" width="700" >


