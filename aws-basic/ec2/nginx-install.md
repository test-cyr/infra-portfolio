# Nginx Installation and Setup on EC2

## Overview
This step covers connecting to the EC2 instance via SSH, installing Nginx, and verifying that it's working by accessing the default page from a browser

## Connect to the EC2 instance via SSH
Use your `.pem` key file tp connect
: ssh -i my-key.pem ec2-user@<YOUR_PUBLIC_IP>

## Install Nginx on Amazon Linux
: sudo yum update -y
: sudo amazon-linux-extras enable nginx1
: sudo yum install -y nginx

## If Use Amazon Linux 2023
: sudo dnf install nginx -y
: sudo systemctl start nginx
: sudo systemctl enable nginx
: sudo systemctl status nginx
