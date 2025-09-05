# EC2 Instance Setup

## Ojbective
Create and connect to a virtual server using AWS EC2 Free Tier

## Setup 1
- Instance type : t2.micro
- OS : Amazon Linux 2
- Key pair used : my-key.pem

## Tools Used
- AWS EC2 (Amazon Elastic Compute Cloud)
- Key Pair (PEM file)
- Security Group
- SSH (Secure Shell)

## Steps (Setup)
1. Go to the EC2 Dashboard

2. Click on **"Lanch Instance"** to begin setting up a new virtual server
![EC2 step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01-ec2-create-step1.PNG)

3. Select **Amazon Linux 2023 (Free tier eligible)** as the operating system

4. Choose `t2.micro` as the instance type
![EC2 step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/02-ec2-create-step2.PNG)

5. Create or select a Key Pair (.pem) file  
![EC2 step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/03-ec2-create-step3.PNG)

6. Configure the security group to allow **SSH access on port 22**
![EC2 step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/04-ec2-create-step4.PNG)

7. Lanuch the instance and copy the public IPv4 address
![EC2 step5](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/05-ec2-create-step5.PNG)

8. Connect to the instance from your termina using the command:
ssh -i "my-key.pem" `ec2-user@<your-public-ip>`   
![EC2 step6](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/06-gitbash-key-permission-change.PNG)

9. ssh first connection
![EC2 step7](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/07-change-to-public-ip.PNG)
![EC2 step8](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/08-ec2-ssh-success.PNG)

## Basic Info
1. EC2 basic info 
![EC2 info](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/ec2-basic-info.JPG)

## Setup Apache Web Server 
1. **update the package manager:** 
: sudo yum update -y 
![Setup Apache 1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/01-yum-update.PNG) 

2. Install Apache 
: sudo yum install httpd -y 
![Setup Apache 2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/02-httpd-install.PNG)  
![Setup Apache 2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/02-httpd-install_2.PNG)  

3. Start and enable Apache 
: sudo systemctl start httpd   
: sudo systemctl enable httpd   
![Setup Apache 3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/03-start-apache.PNG)    

4. Check the Apache default page   
![Setup Apache 4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/04-apache-default.PNG)  

5. Create a custom index page  
: echo "<h1>Hello from EC2</h1>" | sudo tee /var/www/html/index.html  
![Setup Apache 5](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/05-apache-custom-command.PNG)  
![Setup Apache 6](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/06-apache-custom-reslut.PNG)


