# Test Inbound Rule Behavior in Security Group

## Overview
In this practice, I tested how Security Group inbound rules affect web access to an EC2 instance
By removing and re-adding prot 80 (HTTP), I simulated a common real-world connectivity issue and learned how to resolve it

## Step 1
**Remove Port 80 from Inbound Rules**  
- Go to the AWS Console → EC2 → Security Groups
- Select the Security Group attached to your EC2 instance
- Click the **Inbound rules** tab
- Click **Edit inbound rules**
- Remove the rule that allows HTTP (port 80)
- Save changes

## Step 2
**Test Web Access (Should Fail)**
- Open a browser and enter your EC2 Elastic IP
- You should not see the Nginx welcome page. It should time out or show a connection error

## Step 3
**Re-add Port 80 Rule**
- Return to the same Security Group settings
- Click **Edit inbound rules** again
- Add a new rule :
 - Type : HTTP
 - Port : 80
 - Source : Anywhere (0.0.0.0/0) or My IP

## Step 4
**Verify Access is Restored**
- Refresh your browser
- The Nginx welcome page should now load successfully

## Notes
- This test helped reinforce how security rules directly control access to running services
- In real-world troubleshooting, checking Security Group rules is often the first step
