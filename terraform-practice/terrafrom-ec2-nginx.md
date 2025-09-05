# Terraform EC2  + Nginx Deployment Practice

## Summary
This practice covers provisioning an AWS EC2 instance using Terraform and automatically installing Nginx

## Steps 
1. Installed Terraform on local machine  
2. Set up AWS CLI with access key, secret key, and default region using aws configure  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step2.PNG) 
3. Defined EC2 instance resource  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step3.PNG) 
4. Added Security Group rules
5. Added user_data Script to install Nginx  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step5.PNG)
6. Terraform Initialize, Plan, Apply  
 - Initialize Terraform : terraform init
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step6_1.PNG)  
 - Review execution plan : terraform plan  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step6_2.PNG)  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step6_2_1.PNG)  
 - Apply configuration : terraform apply  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step6_3.PNG)  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step6_3_1.PNG)  
7. Verified EC2 instance is running 
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step7.PNG)
8. Verified Nginx default page 
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step8.PNG)
9. Nginx status Active  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step9.PNG)
10. Git Add, Commit, Push
 - git add  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step10_1.PNG)  
 - git commit  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step10_2.PNG)  
 - git push  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step10_3.PNG)  
![Terraform_EC2_Nginx](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01_terraform_nginx_step10_3_1.PNG)  
