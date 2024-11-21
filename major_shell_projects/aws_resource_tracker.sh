#!/usr/bin/bash

# To Track the aws resources

# Note : Every services has quite different command to list/view, go to aws cli references search for required services it will show you the bunch of command & usage


 #1. To list s3 buckets

echo "Listing AWS S3 buckets"
aws s3 ls


 #2. To list ec2 instance

echo "Listing aws EC2 instances"
aws ec2 describe-instances

 #3. List iam users

echo "Listing aws iam users"
aws iam list-users

 #4. & more







