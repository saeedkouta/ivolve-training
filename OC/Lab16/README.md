# Description
## Use Source-to-Image to build container images directly from application source code. Deploy an application using the S2I workflow.

## Steps
### •Clone the HTML application repository from GitHub: https://github.com/IbrahimmAdel/html.git
### •Create a BuildConfig in OpenShift to build the HTML application using the Nginx builder image. Name the BuildConfigmy-html-app.
### •Start the build process for the BuildConfigmy-html-app.
### •View the build logs and monitor the progress.
### •Once the build is complete, expose the service and access the website.



## We Can make it Using cli or Guil

### Using Cli

#### Step 1: Clone The HTML Application then push it to my repository to use (optional)

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/795d43af-1884-4b36-a25f-f3a43a47f4ed" width="1000" >

##### iam going to use my repo [lab16-repo](https://github.com/saeedkouta/oc-lab16.git)

#### Step 2: Create a New-app 

##### This command making and starting a build by creating the following resources

*imagestream

*buildconfig

*deployment

*service

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/d019ca59-4557-438a-a5e5-41b2d90ba9a5" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3039beba-6ab6-4db4-bf35-44410155e287" width="1000" >

#### Step 3: View the logs:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ae4fad96-1633-4c3b-930d-eeb76f2a4560" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/cdfab7c7-5288-4736-afda-4a58f8d83094" width="1000" >

#### Step 4: Expose the service and access the website:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/860fa652-49c5-482d-9f7e-c38e88886b58" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6ea38407-a69f-477a-890e-c3bcc6da8c18" width="1000" >


### Using OpenShift Console:

#### Step 1: open the console and choose developer then add then import from git

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6c97a0b9-bb0e-4ef9-99ee-a7ed83b24766" width="1000" >

#### Step 2: Import the git repo then choose builder image then choose nginx :

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f33b48a9-50f9-4b93-ae78-f962d6f3a4c9" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ccf30b92-1a07-418d-ad47-9178acd5531a" width="1000" >

#### Choose deployment and the port then choose Create a route to exposethe service automatically

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ea54441a-e5a5-40db-b35e-b3e90f73c3b1" width="1000" >

#### Step 3: Creating the Application and Show the Resources that created and access the website

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/feed8cc8-2a13-4495-9caa-51642f07dc8d" width="1000" >

#### Click on it to show the resources:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c8bbd5f9-635a-41e5-b430-21b4df987acd" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ecc31cf0-08bd-4ce1-bf47-3e2204b50e23" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b80e1ce9-0140-4359-9e9d-e6b1c48c2964" width="1000" >

#### We Can Delete The Application By clicking on The Apllication then choose delete application

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ddb28f1b-a19c-4b56-8cdd-10bbcefb2f5b" width="1000" >



