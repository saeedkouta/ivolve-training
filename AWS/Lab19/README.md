### create aws account , set billing alarm create 2 IAM groups (admin-developer) admin group has admin permissions, developer group only access to s3 , create admin-1 user console access only with MFA & admin-2 prog user with cli access only and list users and groups using commands , create dev-user with programmatic and console access 

#### Step 1: Create an AWS Account
Go to AWS Signup page.
Follow the instructions to create a new account.

#### Step 2: Set Billing Alarm
1- Open the CloudWatch console 

2- In the navigation pane, click on Alarms, then click Create Alarm.
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ac00ff51-f3e8-43a4-8ef0-098f731738cb" width="700" >
<br />

3-Choose Select metric. 
<br />
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/95320b1e-03b5-41b0-afa0-27d387853e01" width="700" >
<br />

4- Under Billing, select Total Estimated Charge and click Select metric.
<br />
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ceec25ee-f397-42aa-bdcb-7eb09064e5a9" width="700" >
<br />

5-Define the conditions for the alarm:

5.1.Threshold type: Static

5.2.Whenever my total estimated charges for AWS exceed (enter your threshold amount 10 USD)
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a3b043f4-5810-4f25-b074-734062cb7d8d" width="700" >
<br />

6- Configure actions:
Select In alarm.
Create a new SNS topic, enter an email address to receive notifications, and click Create topic.

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/a35abb42-bf2c-47a3-9627-38f4fc8bb305" width="700" >

Add a name for the alarm and click Create alarm.
<br />

7- Confirm the subscription

the alarm won't work until the subscription is confirmed
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/c1dd67a0-62ad-4539-a49a-58372a34e845" width="700" >

<br />

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/469b8b40-68b7-4c5b-a51c-52126052d873" width="700" >

<br />

#### Step 3: Create IAM Groups and Policies
1- Create Admin Group

1.1. Open the IAM console.

1.2. In the navigation pane, choose Groups, then Create New Group.

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/68c3adca-80ee-415d-8372-856c5a98c62a" width="700" >
<br />
<br />

1.3. Enter the group name

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/60c4a615-2974-4eda-afe2-12e453571ae0" width="700" >
<br />
<br />

1.4. Attach the AdministratorAccess policy.

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b06cc587-1db9-4dd4-8905-276940832a49" width="700" >
<br />
then Create Group
<br />
<br />

1.5. Create Developer Group
<br />

Repeat the steps to create another group.

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/023183b6-d106-4c50-8061-8808936eb761" width="700" >
<br />

Attach the "AmazonS3FullAccess" policy to the Developer group.

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/42379f59-22bb-4a8e-8d62-192111e86a77" width="700" >

<br />

#### Step 4: Create IAM Users

1- Create admin-1 User (Console Access Only with MFA)

1.1. Adding the admin-1 User to the Admin Group

1.2. Using Google Authenticator for MFA

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/4133c254-3c4e-4e6c-8109-80fa0776fd8a" width="700" >
<br />
<br />

2- Create admin-2 User (Cli Access Only)

2.1. Adding the admin-2 User to the Admin Group

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/fed3016e-60ae-47ad-8697-653dee2d920b" width="700" >

2.2. Trying to see the AdminAccess With Cli

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/fa3c355f-0b16-4420-808c-15fd71e50f17" width="700" >
<br />
<br />

3- Create Dev User (Cli and Console Access)

3.1. Adding the Dev User to the Dev Group that have s3 FullAccess Policy

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/705503a1-28c8-46aa-89df-4fd1b5605eaf" width="700" >

3.2. Trying to see that only have S3Access With Cli

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/5fcc5e56-98b0-42be-966f-a9efde149e07" width="700" >
