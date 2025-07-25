# Elastic IP Allocation and Association

## Overview
In this step, we allicate an Elastic IP AWS and associate it with our existing EC2 Instance
This ensures that the EC2 instance has a fixed public IP address, which does not change even if the instance is stopped and restarted

## Step 1
**Allocate Elastic IP**
- Go to the AWS Management Console
- Navigate to **EC2 > Network & Security > Elastic IPs**
- Click **Allicate Elastic IP address**
- Confirm by clicking **Allocate**

## Step 2
**Associate Elastic IP with EC2 Instance**
- Select the allocated Elastic IP
- Click **Actions > Associate Elastic IP address**
- Choose your EC2 instance from the dropdown list
- Click **Associate**

## Step 3
**Verify Conndection**
- Open a browser and enter and Elastic IP address
- You should see the Nginx (or Apache) default page ("Welcome to nginx" or "It works!")

## Notes
- Elastic IP prevents public IP from changing after instance stop/start
- It's a essential for stable external access to services hosted on EC2
- Remember to release Elastic IPs you no longer use to avoid charges
