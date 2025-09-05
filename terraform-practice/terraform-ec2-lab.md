# Terraform EC2 Practice

## Summary
This project demonstrates the basic usage of **Terraform** to provision and manage an AWS EC2 instance
The purpose of this exercise is to gain hands-on experience with Infrastructure as Code (IaC) using Terraform

## Steps
1. **Created a new repository** on GitHub (`infra-portpolio/terraform-practice`)  
2. **Installed Terraform** and set up environment variables for the executable  
3. **Installed AWS CLI** and configured credentials with Access Key and Secret Key  
4. **Wrote a `main.tf` file**  
provider "aws" {  
  region = "ap-northeast-2"  
}  

resource "aws_instance" "exmaple" {  
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"  

  tags = {  
    Name = "TerraformExample"  
  }  
}  
5. **Initalized Terraform**  
 - terraform init  
![Terraform_EC2_init](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/02_terraform_code_init.PNG)  
 - terraform plan  
![Terraform_EC2_plan](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/03_terraform_code_plan.PNG)  
![Terraform_EC2_plan](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/03_terraform_code_plan_1.PNG)   
 - terraform apply  
![Terraform_EC2_plan](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/04_terraform_code_apply.PNG)  
6. **Result EC2 Instance**
![Terraform_EC2_Instacne](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/05_terraform_ec2_dashboard.PNG)   
![Terraform_EC2_Instacne](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/05_terraform_ec2_dashboard_1.PNG)   
7. **Terraform Destroy**   
![Terraform_EC2_Instacne](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/06_terraform_code_destroy.PNG)   
![Terraform_EC2_Instacne](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/07_terraform_ec2_destroy.PNG)
