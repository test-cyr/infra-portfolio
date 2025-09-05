# Nginx Installation and Setup on EC2  

## Overview  
This step covers connecting to the EC2 instance via SSH, installing Nginx, and verifying that it's working by accessing the default page from a browser  

## Connect to the EC2 instance via SSH  
Use your `.pem` key file tp connect  
: ssh -i my-key.pem ec2-user@<YOUR_PUBLIC_IP>  
![SSH_Connect](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/ssh_connection_step1.PNG)

## Install Nginx on Amazon Linux  
: sudo yum update -y  
![Install_Nginx step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/yum_update_step2.PNG)  
: sudo amazon-linux-extras enable nginx1  
: sudo yum install -y nginx  

## If Use Amazon Linux 2023  
: sudo dnf install nginx -y  
![Install_Nginx step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/install_nginx_step3.PNG)  
: sudo systemctl start nginx  
: sudo systemctl enable nginx  
![Install_Nginx step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/install_nginx_step4.PNG)  
: sudo systemctl status nginx   
![Install_Nginx step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/install_nginx_step5.PNG)
