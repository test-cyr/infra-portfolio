# Terraform EC2  + Nginx Deployment Practice

## Summary
This practice covers provisioning an AWS EC2 instance using Terraform and automatically installing Nginx

## Steps 
1. Installed Terraform on local machine  
2. Set up ASW CLI with access key, secret key, and default region using aws configure  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step2.PNG) 
3. Defined EC2 instance resource  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step3.PNG) 
5. Added Security Group rules
6. SSH Connection
7. Added provisioner in Terraform to install Nginx  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step5.PNG)
8. Terraform Initialize, Plan, Apply  
 - Initialize Terraform : terraform init
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step7_1.PNG)  
 - Review execution plan : terraform plan  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step7_2.PNG)  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step7_2_1.PNG)  
 - Apply configuration : terraform apply  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step7_3.PNG)  
8. Verified Nginx default page
