# Connect an S3 static site to CloudFront for global content delivery

## Summary
In this step, I connected my S3 static website to CloudFront to distribute content globally using a CDN
I also configured cache behavior and tested access via a CloudFront domain

## Step 1
**Create CloudFront Distribution**
- Opened **CloudFront** from the AWS console
- Clicked **Create Distribution**
- Under **Origin Domain**, selected my S3 static website bucket
- Set **Origin Access Control(OAC)** to enabled (recommended)
- Clicked **Create Distribution**

## Step 2
**Wait for CloudFront Deployment**
- Waited until the distribution status changed to **Deployed**
- Copied the CloudFront domain name

## Step 3
**Test the CloudFront URL**
- Opened the CloudFront URL in the browser
- Confirmed the S3-hosted website is served via CloudFront

## Step 4
**Restrict direct S3 access**
- Edited the S3 bucket policy to block public access directly
- Ensured access is only available through CloudFront OAC

![Bucket_policy_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_step1.PNG)
