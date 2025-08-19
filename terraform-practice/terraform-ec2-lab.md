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
 - terraform plan
 - terraform apply
