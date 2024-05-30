### use ansible vault to encrypt playbook sensitive information, such as database passwords, and incorporate the encrypted data into an Ansible playbook

#### Step 1: Create secret.yml file using ansible-vaults

1- using this command:
```
ansible-vault create secrets.yml
```
add become password , user and password of mysql user
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6a5ed28e-87fc-4025-9669-2005348ec5a8" width="700" >


#### Step 2: Create inventory

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f168826e-4db3-4a42-9ebd-749a00023367" width="700" >

#### Step 3: Create ansible.cfg file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a86502c2-205e-447a-be60-b23045ba541c" width="700" >

#### Step 4: Create playbook.yml file

##### the tasks in playbook file:

###### 1- install mysql:
```
- name: Install MySQL
      yum:
        name: mysql-server
        state: present
```

###### 2- install mysql python libirary:
```
 - name: Install MySQL Python library
      yum:
        name: python3-PyMySQL
        state: present
```

###### 3- ensure that the mysql service is enabled:
```
   - name: Ensure MySQL service is started and enabled
      service:
        name: mysqld
        state: started
        enabled: yes
```

###### 4- Create mysql database:
```
 - name: Create MySQL database
   mysql_db:
     name: my_database
```

###### 5- Create mysql user:
```
   - name: Create MySQL user
      mysql_user:
        name: "{{ database_user }}"
        password: "{{ database_user_password }}"
        priv: "*.*:ALL"
        state: present
```

###### 6- give the user the pirmissions:

this permission gives the user the full access if you want to give it create table only replace ALL with CREATE

```
    - name: Ensure user has privileges 
      mysql_user:
        name: "{{ database_user }}"
        priv: "my_database.*:ALL"
        state: present
```

##### the Full playbook file
```
---
- name: lab6
  hosts: server
  become: true
  vars_files:
    - secret.yml
  tasks:
    - name: Install MySQL
      yum:
        name: mysql-server
        state: present

    - name: Install MySQL Python library
      yum:
        name: python3-PyMySQL
        state: present

    - name: Ensure MySQL service is started and enabled
      service:
        name: mysqld
        state: started
        enabled: yes

    - name: Create MySQL database
      mysql_db:
        name: my_database

    - name: Create MySQL user
      mysql_user:
        name: "{{ database_user }}"
        password: "{{ database_user_password }}"
        priv: "*.*:ALL"
        state: present

    - name: Ensure user has privileges to create tables
      mysql_user:
        name: "{{ database_user }}"
        priv: "my_database.*:ALL"
        state: present
```
#### Step 5: run the playbook

###### 1- using this command:
```
ansible-playbook -i inventory playbook.yml --ask-vault-pass
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ac0c7b2f-521b-47a8-8473-329869c4fbf5" width="700" >

#### Step 6: Access tne mysql database

###### 1- ssh and access to the mysql terminal:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/202ec44f-3ea9-4145-9686-e643c19d1053" width="700" >

###### 2- create table and describe the table:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d29fae66-9ea2-4910-a7cf-a2039604b69a" width="700" >


