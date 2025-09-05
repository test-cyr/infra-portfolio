# AWS Infrastucture Provisioning with Terraform

## Summary
This is a personal project to demonstrate my skills in Infrastructure as Code (IaC) using Terraform
The project automatically provisions the core AWS infrastructure components for a simple web srevice.

# Step 1: Prerequisites
 - An active AWS account with vaild credentials is required
 - Install Terraform on your local machine
 - Install and configure the AWS CLI by running aws configure

# Step 2: Deployment
 - Clone this repository to local machine
 - Navigate to the proejct directory
 - Initialize Terraform to download the necessary provider plugins (terraform init)
 - Review the execution plan to see which resources will be created (terraform plan)
 - Apply the configuration to provision the infrastructure on AWS account (terraform apply)  
![Terraform_EC2_init](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/success_terraform_apply.PNG)  
 - Type yes when prompted to confirm the action

# Step 3: Verify
 - Upon successful completion of terraform apply, the public IP address of the EC2 instance will be displayed on terminal  
![Terraform_EC2_init](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/success_ec2_instance.PNG)   
![Terraform_EC2_init](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/success_vpc.PNG)   
 - Access the Nginx welcome page by entering this IP into a web brower   
![Terraform_EC2_init](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/success_nginx_default_page.PNG)
