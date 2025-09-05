# Hosting a Static Website using Amazon S3 + CloudFront

## Summary
In this step, we connect an existing S3 static website to Amazon CloudFront to enable caching, HTTPS access, and global content delivery

## Step 1
**Create CloudFront Distribution**  
- Opened **CloudFront** from the AWS console  
![CloudFront_Create_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step1.PNG)  
- Clicked **Create Distribution**  
![CloudFront_Create_step1_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step1_1.PNG)  
- Under **Origin Domain**, selected my S3 static website bucket  
![CloudFront_Create_step1_2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step1_2.PNG)  
- Under **Viewer protocol policy**, choose `Redirect HTTP to HTTPS`  
![CloudFront_Create_step1_3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step1_3.PNG)  
- Scroll down to **Default root objects** and enter `idnex.html`  
![CloudFront_Create_step1_4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step1_4.PNG)  
- Create Distribution  
![CloudFront_Create_step1_5](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step1_5.PNG)  

## Step 2
**Wait for CloudFront Deployment**  
- Waited until the distribution status changed to **Deployed**  
- Copied the CloudFront domain name  
![CloudFront_Create_step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step2.PNG)  
![CloudFront_Create_step2_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step2_1.PNG)  

## Step 3
**Test the CloudFront URL**  
- Copy the **CloudFront domain name** (e.g. `d3vv31banc2d75.cloudfront.net)  
- Paste it tin your browser - you should see your static website  
![CloudFront_Create_step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/CloudFront_create_step3.PNG)
