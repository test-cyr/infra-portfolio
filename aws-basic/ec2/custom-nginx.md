# Replacing default Nginx page with a custom HTML page

## Step 1
**Connect to your EC2 instance via SSH**  
: ssh -i my-key.pem ec2-user@<your-elastic-ip>  
![Custom_Nginx_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/ssh_connection_step1.PNG)

## Step 2
**Navigate to the Nginx web root directory**  
: cd /usr/share/nginx/html  
![Custom_Nginx_step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/custom-nginx-step_2.PNG) 

## Step 3
**Backup the default index.html (optional)**  
: sudo mv index.html index.html.bak  
![Custom_Nginx_step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/custom-nginx-step_3.PNG) 

## Step 4
**Create your custom index.html file**  
: sudo nano index.html  
![Custom_Nginx_step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/custom-nginx-step_4.PNG) 

## Step 5
**Open your EC2 public IP in a web browser**  
`http://your-elastic-ip` 
![Custom_Nginx_step5](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/custom-nginx-step_5.PNG) 
