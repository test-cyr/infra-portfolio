# Elastic IP Allocation and Association

## Summary
In this step, we allocate an Elastic IP AWS and associate it with our existing EC2 Instance
This ensures that the EC2 instance has a fixed public IP address, which does not change even if the instance is stopped and restarted

## Step 1
**Allocate Elastic IP**  
- Go to the AWS Management Console  
- Navigate to **EC2 > Network & Security > Elastic IPs**  
![Elastic_IP step1_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step1_1.PNG)  
- Click **Allicate Elastic IP address**  
![Elastic_IP step1_2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step1_2.PNG)  
- Confirm by clicking **Allocate**  
![Elastic_IP step1_3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step1_3.PNG) 

## Step 2
**Associate Elastic IP with EC2 Instance**  
- Select the allocated Elastic IP  
![Elastic_IP step2_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step2_1.PNG) 
- Click **Actions > Associate Elastic IP address**  
![Elastic_IP step2_2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step2_2.PNG) 
- Choose your EC2 instance from the dropdown list  
![Elastic_IP step2_3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step2_3.PNG) 
- Click **Associate**  
![Elastic_IP step2_4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step2_4.PNG) 

## Step 3
**Verify Conndection**  
- Open a browser and enter and Elastic IP address  
- You should see the Nginx (or Apache) default page ("Welcome to nginx" or "It works!")  
![Elastic_IP step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/elastic_step3.PNG)

## Notes
- Elastic IP prevents public IP from changing after instance stop/start
- It's a essential for stable external access to services hosted on EC2
- Remember to release Elastic IPs you no longer use to avoid charges
