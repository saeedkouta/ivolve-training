# Description
## create an ansible roles for installing jenkins , docker , openshift cli

### Step 1: Create Roles

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e4c7eb99-f021-4ae0-b665-86346989a7ea" width="700" >

### Step 2: work on docker role

#### 1- tasks file:

##### task 1: update apt cache

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/72ebd0b6-dadd-472e-b56b-800e29643b9a" width="700" >

##### task 2: Install required packages

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8ec5c8b7-8341-45f6-8e9a-7956e1772445" width="700" >

##### task 3: Add Docker GPG key

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f44cfd93-0785-4696-897e-df80d82e5d63" width="700" >

##### task 4: Add Docker repository

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/afe04df1-7333-4d2d-a955-74e5cf09c8ef" width="700" >

##### task 5: Install Docker

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d2ffec24-efdc-4466-ad7a-794ed72aff17" width="700" >

##### task 6: Ensure Docker service is started and enabled:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/529eb7f2-78f8-4d5b-a753-c95735b3b37c" width="700" >

#### 2- defaults file:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/64f78638-7950-49b9-b226-a67751f6e657" width="700" >

#### 3- handler file:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f26dbdf7-d8bb-401b-bf59-4e12c9ecc206" width="700" >

### Step 3: work on jenkins role

#### 1- tasks file:

##### task 1: Remove any existing Jenkins repository configuration

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e27415d4-2685-4dbe-b265-71e72f198a17" width="700" >

##### task 2: add jenkins key

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/981c430a-2602-4103-afad-caf3e128a9da" width="700" >

##### task 3: add jenkins repo

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6a38edf6-62b6-4f13-827c-5e797e2ffd7a" width="700" >

##### task 4: install jenkins

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/51e5f2e6-81b5-41af-9f7d-62e3d8d4c9c2" width="700" >

##### task 5: ensure starting jenkins

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5532b35a-90fe-47f8-9fe5-51304fac5d01" width="700" >

##### task 6: Fetch Jenkins password

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b8ffdc7f-0a97-4ea7-b439-a8baae8a63d5" width="700" >

##### task 7: print jenkins password

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2da4cb4f-6ee0-410a-8346-c587c687bcc8" width="700" >

##### task 8: enable jenkins to start at boot time

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/1efc73ea-7f3e-4c44-a6b8-97dc7286f1d0" width="700" >

#### 2- the handler file:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/0da0b651-9400-4ff3-b9e0-d24cce97038c" width="700" >

#### 3- defaults file:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/77bdaae2-bac9-46ea-9343-6b24b88dab13" width="700" >

### Step 4: work on openshift role

#### 1- tasks file:

##### task 1: Download oc CLI tarball

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e4737ff1-df3d-4917-a882-6e049a6d930d" width="700" >

##### task 2: Extract oc CLI

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/42ccbb42-4938-4ec0-bc32-42005a595c0c" width="700" >

##### task 3: Ensure oc CLI is executable

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d7f3806f-1e2e-4bc1-bf0a-6798fa36bccf" width="700" >

#### 2- defaults file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d1a0e93a-baa5-4766-8221-3d2fced88e17" width="700" >

### Step 5: create inventory file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/853f4484-c033-4ab4-bc3c-e46c64f8bc9b" width="700" >

### Step 5: Create vault file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/283436db-2101-44aa-ac2b-b0f6c537d49e" width="700" >

### Step 6: Create playbook

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/64912dce-6e54-436b-a7e4-f0532f85060d" width="700" >

### Step 7: Run the playbook

#### 1- jenkins role:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2e16cb10-f28d-4546-9db7-f8ac4990959b" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b6abd190-5f10-4f4e-9063-136ac4feb83c" width="700" >

#### 2- docker role:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/48564737-f419-409d-9bf7-8a1777a210e2" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/4629d83b-a672-4a3e-892b-daf06f73dcec" width="700" >

#### 3- openshift role:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/81f8d8c3-b625-4e18-b09c-615a365dc920" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/50b97706-88d4-4008-97b5-95e0eedc1dc7" width="700" >









