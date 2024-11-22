# AWS CLI Commands Cheatsheet

# **1. General Commands**

## **Configure AWS CLI**

- **Command:** `aws configure`
- **Description:** Sets up AWS CLI with your credentials (Access Key, Secret Key, Region).
- **Example:**

```jsx
$ aws configure
AWS Access Key ID [None]: YOUR_ACCESS_KEY
AWS Secret Access Key [None]: YOUR_SECRET_KEY
Default region name [None]: us-west-2
Default output format [None]: json
```

## **Display Help Information**

- **Command:** `aws help`
- **Description:** Shows help information for AWS CLI commands.
- **Example:**

```jsx
$ aws s3 help
```

# **2. EC2 (Elastic Compute Cloud)**

## **Describe Instances**

- **Command:** `aws ec2 describe-instances`
- **Description:** Retrieves details about one or more EC2 instances.
- **Example:**

```jsx
$ aws ec2 describe-instances --instance-ids i-1234567890abcdef0
```

## **Start an Instance**

- **Command:** `aws ec2 start-instances --instance-ids <instance-id>`
- **Description:** Starts a stopped EC2 instance.

```jsx
$ aws ec2 start-instances --instance-ids i-1234567890abcdef0
```

​

## **Stop an Instance**

- **Command:** aws ec2 stop-instances --instance-ids <instance-id>
- **Description:** Stops a running EC2 instance.
- **Example:**

```jsx
$ aws ec2 stop-instances --instance-ids i-1234567890abcdef0
```

​

## **Terminate an Instance**

- **Command:** aws ec2 terminate-instances --instance-ids <instance-id>
- **Description:** Terminates an EC2 instance.
- **Example:**

```jsx
$ aws ec2 terminate-instances --instance-ids i-1234567890abcdef0
```

## **Create a Key Pair**

- **Command:** aws ec2 create-key-pair --key-name <key-name>
- **Description:** Creates a new SSH key pair.
- **Example:**

```jsx
$ aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem
```

## **Create a Security Group**

- **Command:** aws ec2 create-security-group --group-name <group-name> --description "<description>"
- **Description:** Creates a new security group.
- **Example:**

```jsx
$ aws ec2 create-security-group --group-name MySecurityGroup --description "My security group"
```

## **Authorize Security Group Ingress**

- **Command:** aws ec2 authorize-security-group-ingress --group-name <group-name> --protocol <tcp|udp|icmp> --port <port> --cidr <ip-range>
- **Description:** Adds a rule to a security group to allow inbound traffic.
- **Example:**

```jsx
$ aws ec2 authorize-security-group-ingress --group-name MySecurityGroup --protocol tcp --port 22 --cidr 0.0.0.0/0
```

# **3. S3 (Simple Storage Service)**

## **List Buckets**

- **Command:** aws s3 ls
- **Description:** Lists all S3 buckets in your account.
- **Example:**

```jsx
$ aws s3 ls
```

## **Create a Bucket**

- **Command:** aws s3 mb s3://<bucket-name>
- **Description:** Creates a new S3 bucket.
- **Example:**

```jsx
$ aws s3 mb s3://my-bucket-name
```

## **Upload a File to S3**

- **Command:** aws s3 cp <local-file> s3://<bucket-name>/
- **Description:** Uploads a file to a specified S3 bucket.
- **Example:**

```jsx
$ aws s3 cp myfile.txt s3://my-bucket-name/
```

## **Download a File from S3**

- **Command:** aws s3 cp s3://<bucket-name>/<file-name> <local-destination>
- **Description:** Downloads a file from S3 to your local machine.
- **Example:**

```jsx
$ aws s3 cp s3://my-bucket-name/myfile.txt ./myfile.txt
```

## **Sync Local Directory with S3**

- **Command:** aws s3 sync <local-dir> s3://<bucket-name>/
- **Description:** Syncs a local directory to an S3 bucket.
- **Example:**

```jsx
$ aws s3 sync ./my-folder s3://my-bucket-name/
```

​

## **Remove an S3 Bucket**

- **Command:** aws s3 rb s3://<bucket-name> --force
- **Description:** Deletes an S3 bucket and its contents.
- **Example:**

```jsx
$ aws s3 rb s3://my-bucket-name --force
```

# **4. IAM (Identity and Access Management)**

## **List IAM Users**

- **Command:** aws iam list-users
- **Description:** Lists all IAM users in your account.
- **Example:**

```jsx
$ aws iam list-users
```

​

## **Create a New IAM User**

- **Command:** aws iam create-user --user-name <user-name>
- **Description:** Creates a new IAM user.
- **Example:**

```jsx
$ aws iam create-user --user-name DevUser
```

​

## **Attach Policy to a User**

- **Command:** aws iam attach-user-policy --user-name <user-name> --policy-arn <policy-arn>
- **Description:** Attaches a managed policy to an IAM user.
- **Example:**

```jsx
$ aws iam attach-user-policy --user-name DevUser --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
```

## **Create an IAM Role**

- **Command:** aws iam create-role --role-name <role-name> --assume-role-policy-document file://<policy-document>
- **Description:** Creates a new IAM role with a specified trust policy.
- **Example:**

```jsx
$ aws iam create-role --role-name MyRole --assume-role-policy-document file://trust-policy.json
```

​

## **List IAM Roles**

- **Command:** aws iam list-roles
- **Description:** Lists all IAM roles in your account.
- **Example:**

```jsx
$ aws iam list-roles
```

# **5. Lambda**

## **List Lambda Functions**

- **Command:** aws lambda list-functions
- **Description:** Lists all Lambda functions in your account.
- **Example:**

```jsx
$ aws lambda list-functions
```

​

## **Invoke a Lambda Function**

- **Command:** aws lambda invoke --function-name <function-name> <output-file>
- **Description:** Invokes a Lambda function and outputs the response to a file.
- **Example:**

```jsx
$ aws lambda invoke --function-name MyFunction result.txt
```

​

## **Update Lambda Function Code**

- **Command:** aws lambda update-function-code --function-name <function-name> --zip-file fileb://<zip-file>
- **Description:** Updates the code of an existing Lambda function.
- **Example:**

```jsx
$ aws lambda update-function-code --function-name MyFunction --zip-file fileb://my-function.zip
```

# **6. CloudFormation**

## **Create a Stack**

- **Command:** aws cloudformation create-stack --stack-name <stack-name> --template-body file://<template-file>
- **Description:** Creates a new CloudFormation stack based on a template file.
- **Example:**

```jsx
$ aws cloudformation create-stack --stack-name MyStack --template-body file://template.json
```

​

## **Update a Stack**

- **Command:** aws cloudformation update-stack --stack-name <stack-name> --template-body file://<template-file>
- **Description:** Updates an existing CloudFormation stack with a new template.
- **Example:**

```jsx
$ aws cloudformation update-stack --stack-name MyStack --template-body file://template.json
```

## **Delete a Stack**

- **Command:** aws cloudformation delete-stack --stack-name <stack-name>
- **Description:** Deletes an existing CloudFormation stack.
- **Example:**

```jsx
$ aws cloudformation delete-stack --stack-name MyStack
```

# **7. EKS (Elastic Kubernetes Service)**

## **List EKS Clusters**

- **Command:** aws eks list-clusters
- **Description:** Lists all EKS clusters in your account.
- **Example:**

```jsx
$ aws eks list-clusters
```

​

## **Describe an EKS Cluster**

- **Command:** aws eks describe-cluster --name <cluster-name>
- **Description:** Provides details about an EKS cluster.
- **Example:**

```jsx
$ aws eks describe-cluster --name MyCluster
```

## **Create an EKS Cluster**

- **Command:** aws eks create-cluster --name <cluster-name> --role-arn <role-arn> --resources-vpc-config <vpc-config>
- **Description:** Creates a new EKS cluster with the specified configuration.
- **Example:**

```jsx
$ aws eks create-cluster --name MyCluster --role-arn arn:aws:iam::123456789012:role/EKSRole --resources-vpc-config subnetIds=subnet-abc123,subnet-def456,securityGroupIds=sg-123456
```

# **8. RDS (Relational Database Service)**

## **Describe DB Instances**

- **Command:** aws rds describe-db-instances
- **Description:** Lists all RDS DB instances.
- **Example:**

```jsx
$ aws rds describe-db-instances
```

​

## **Create a DB Instance**

- **Command:** aws rds create-db-instance --db-instance-identifier <identifier> --db-instance-class <instance-class> --engine <engine> --allocated-storage <storage-size> --master-username <username> --master-user-password <password>
- **Description:** Creates a new RDS DB instance.
- **Example:**

```jsx
$ aws rds create-db-instance --db-instance-identifier MyDBInstance --db-instance-class db.t2.micro --engine mysql --allocated-storage 20 --master-username admin --master-user-password secretpassword
```

## **Delete a DB Instance**

- **Command:** aws rds delete-db-instance --db-instance-identifier <identifier> --skip-final-snapshot
- **Description:** Deletes an RDS DB instance.
- **Example:**

```jsx
$ aws rds delete-db-instance --db-instance-identifier MyDBInstance --skip-final-snapshot
```

​

# **9. Route 53**

## **List Hosted Zones**

- **Command:** aws route53 list-hosted-zones
- **Description:** Lists all Route 53 hosted zones in your account.
- **Example:**

```jsx
$ aws route53 list-hosted-zones
```

## **Create a Hosted Zone**

- **Command:** aws route53 create-hosted-zone --name <domain-name> --caller-reference <unique-string>
- **Description:** Creates a new Route 53 hosted zone for a domain.
- **Example:**

```jsx
$ aws route53 create-hosted-zone --name example.com --caller-reference "unique-string-123"
```

# **10. CloudWatch**

## **List CloudWatch Alarms**

- **Command:** aws cloudwatch describe-alarms
- **Description:** Lists all CloudWatch alarms.
- **Example:**

```jsx
$ aws cloudwatch describe-alarms
```

​

## **Create a CloudWatch Alarm**

- **Command:** aws cloudwatch put-metric-alarm --alarm-name <alarm-name> --metric-name <metric-name> --namespace <namespace> --statistic <statistic> --period <seconds> --threshold <value> --comparison-operator <operator> --evaluation-periods <count>
- **Description:** Creates a new CloudWatch alarm based on a specified metric.
- **Example:**

```jsx
$ aws cloudwatch put-metric-alarm --alarm-name HighCPUAlarm --metric-name CPUUtilization --namespace AWS/EC2 --statistic Average --period 300 --threshold 80 --comparison-operator GreaterThanThreshold --evaluation-periods 1
```