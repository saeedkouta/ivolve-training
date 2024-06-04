# Description
## use the AWS cli to create an s3 bucket , configure permissions and upload/download the files to/from the bucket , enable versioning and logging for the bucket

### Step 1: Install and Configure the aws cli

#### 1- install AWS cli

[AWS Cli install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

#### 2- Cunfigure aws cli:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/bd0554cb-845f-47c1-a093-544bd79f482c" width="700" >

### Step 2: Create bucket

using this command
```
aws s3api create-bucket --bucket your-bucket-name --region your-region
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/e85251fc-0ba7-49b5-bf12-175861bae9f5" width="700" >

### Step 3: Configure Bucket Permissions

#### 1- Create bucket-policy.json file

#### 2- add this poliicy on it:

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::your-bucket-name/*"
        }
    ]
}
```

that allows public read access

#### 3- Apply the policy using this command:
```
aws s3api put-bucket-policy --bucket your-bucket-name --policy file://bucket-policy.json
```
if it cant be accessed , try to apply public access block settings using this configuration:
```
aws s3api put-public-access-block --bucket your-bucket-name --public-access-block-configuration BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ef5bf594-b68e-4bbf-b21a-6730f45627d2" width="700" >

### Step 4: Upload Files to the Bucket
```
aws s3 cp path/to/your/file s3://your-bucket-name/
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/29569e35-0071-4404-9a7f-7e455cb62989" width="700" >

### Step 5: Download Files from the Bucket
```
aws s3 cp s3://your-bucket-name/your-file path/to/local/destination
```

<img src="![Screenshot from 2024-05-31 10-47-15](https://github.com/saeedkouta/ivolve-training/assets/167209058/4c8ff494-4767-40ea-ac27-4eb559e99488" width="700" >

### Step 5: Enable Versioning for the Bucket
```
aws s3api put-bucket-versioning --bucket your-bucket-name --versioning-configuration Status=Enabled
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/3cdd1873-af1b-4c45-9949-6dcff197751b" width="700" >

### Step 6: Enable logging for the Bucket
```
aws s3api put-bucket-logging --bucket your-bucket-name --bucket-logging-status '{
    "LoggingEnabled": {
        "TargetBucket": "your-log-bucket-name",
        "TargetPrefix": "log/"
    }
}'
```

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/8533e33f-b95c-4467-83ce-a40dfee17335" width="700" >

