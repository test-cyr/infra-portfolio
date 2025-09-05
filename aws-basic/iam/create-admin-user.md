## Creating an Admin User on AWS IAM

## Summary
Create an IAM user with full administrative access to all AWS services

## Steps
1. Go to IAM → Users → Add user
2. Enger Username : `admin-user` 
![Create_AdminUser step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_admin_user_step1.PNG)
3. Enable console access & programmatic access  
4. Attach policy : `AdministratorAccess`
![Create_AdminUser step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_admin_user_step2.PNG)
5. Create and save the credentials  
![Create_AdminUser step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_admin_user_step3.PNG)  
![Create_AdminUser step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/created_admin_user_step4.PNG)  
![Create_AdminUser step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/created_admin_user_step5.PNG)

## Result
The `admin-user` should have full permissions on AWS, including EC2, S3, IAM, etc..
