# Test Inbound Rule Behavior in Security Group

## Summary
In this practice, I tested how Security Group inbound rules affect web access to an EC2 instance
By removing and re-adding prot 80 (HTTP), I simulated a common real-world connectivity issue and learned how to resolve it

## Step 1
**Remove Port 80 from Inbound Rules**  
- Go to the AWS Console → EC2 → Security Groups  
![Inbound_Rules_step1_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step1_1.PNG)  
- Select the Security Group attached to your EC2 instance  
- Click the **Inbound rules** tab  
![Inbound_Rules_step1_2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step1_2.PNG)  
- Click **Edit inbound rules**  
![Inbound_Rules_step1_3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step1_3.PNG)  
- Remove the rule that allows HTTP (port 80)  
![Inbound_Rules_step1_4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step1_4.PNG)  
- Save changes  
![Inbound_Rules_step1_5](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step1_5.PNG) 

## Step 2
**Test Web Access (Should Fail)** 
- Open a browser and enter your EC2 Elastic IP  
- You should not see the Nginx welcome page. It should time out or show a connection error  
![Inbound_Rules_step2_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step2_1.PNG)  

## Step 3
**Re-add Port 80 Rule**
- Return to the same Security Group settings  
- Click **Edit inbound rules** again  
![Inbound_Rules_step3_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step3_1.PNG)  
- Add a new rule : 
 - Type : HTTP 
 - Port : 80 
 - Source : Anywhere (0.0.0.0/0) or My IP 
![Inbound_Rules_step3_2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step3_2.PNG)
 - Success
![Inbound_Rules_step3_3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step3_3.PNG)  

## Step 4
**Verify Access is Restored** 
- Refresh your browser 
- The Nginx welcome page should now load successfully 
![Inbound_Rules_step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/inbound-rules_step4.PNG) 

## Notes
- This test helped reinforce how security rules directly control access to running services
- In real-world troubleshooting, checking Security Group rules is often the first step
