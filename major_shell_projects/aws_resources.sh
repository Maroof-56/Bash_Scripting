#!/usr/bin/bash
# Author : Maroof Ahmed
# Date   : 16/11/24

 # Script to automate the process of listing all the listed resources in an AWS account


 # Following are the supported aws resources by the script

 << comment

     1. EC2
     2. S3
     3. Lamda
     4. RDS
     5. DynamoDB
     6. Cloudfront
     7. VPC
     8. Cloudwatch
     9. IAM
     10. SNS

comment


 # Check if the required number of argument are passed.

if [[ $# -lt 2 ]]
then
    echo "Usage : $0 <aws_region> <aws_service>"
    echo "Example : us-east-1 ec2 "
    exit 1
fi

 # Assign the arguments to variables and convert the service to lowercase

aws_region=$1
aws_service=$2


 # Check aws cli is  install or not

if ! command -v aws &>/dev/null
then
    echo "AWS CLI is not Installed."
fi


 # Check AWS is Configure or not ?

if [[ ! -d ~/.aws ]]
then
    echo "AWS is not configure,Configure it to use."
fi


 # Script for available services

case $2 in
       ec2)
          aws ec2 describe-instances --region $aws_region
          ;;
       s3)
          aws s3api list-buckets --region $aws_region
          ;;
       rds)
          aws rds describe-db-instances --region $aws_region
          ;;
       vpc)
        echo "Listing VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
        ;;
       iam)
        echo "Listing IAM Users in $aws_region"
        aws iam list-users --region $aws_region
        ;;
       cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region"
        aws cloudwatch describe-alarms --region $aws_region
        ;;
       lambda)
        echo "Listing Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;
    sns)
        echo "Listing SNS Topics in $aws_region"
        aws sns list-topics --region $aws_region
        ;;
    sqs)
        echo "Listing SQS Queues in $aws_region"
        aws sqs list-queues --region $aws_region
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $aws_region"
        aws dynamodb list-tables --region $aws_region
        ;;
    *)
       echo "Invalid service."
       exit 1
       ;;
esac






<< comment
       command :
        A shell built-in command used to determine and execute commands.
        It checks if a specific command exists and is executable in the current environment.

      -v (verbose):
      When used with command, it shows the path to the executable file for the given command if it is found in the system's PATH.
      If the command is not found, command -v exits with a non-zero status, indicating failure.

comment
