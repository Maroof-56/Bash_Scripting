#!/usr/bin/bash


<< comment
                   ###### To Integrate AWS CLI with AWS Services ######

           1. Install AWS CLI - You  can install it after reading documentation or below command
                   - curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
                   - unzip awscliv2.zip
                   - sudo ./aws/install

           2. After Installation check aws --version to verify installation.

           3. After that login to AWS Console
                   - Click on Your User_name         ( Top right )
                   - Click on Security credential
                   - Click on create Access Key
                   - Copy Access & Secret key either you can download it.

           4. Now Configure AWS CLI using command - aws configure

           5. It ask  4 things,fill as per your credential
                   - AWS Access Key ID [None]: AKIAEXAMPLE12345678                        ( Just an example )
                   - AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
                   - Default region name [None]: us-east-1               ( Your region )
                   - Default output format [None]: json

          6. Now everything is set up, to verify
                   - type -- cat ~/.aws/credentials
                     This will show you the credential you have enter such as Access &  Secret Key
                   - type -- cat ~/.aws/config
                     This  will show you the rest 2 settings.
                   - type -- aws configure list   ( to see all the credentials )

          7. Now run the script.

          8. To check manually if it's working
                   - aws s3 ls                    ( change to service name which is running in your aws account to verify )
                     List all the buckets present

comment

