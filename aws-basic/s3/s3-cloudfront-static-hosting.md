# Hosting a Static Website using Amazon S3 + CloudFront

## Summary
In this step, we connect an existing S3 static website to Amazon CloudFront to enable caching, HTTPS access, and global content delivery

## Step 1
**Create CloudFront Distribution**
- Opened **CloudFront** from the AWS console
- Clicked **Create Distribution**
1-1
- Under **Origin Domain**, selected my S3 static website bucket
1-2
- Under **Viewer protocol policy**, choose `Redirect HTTP to HTTPS`
1-3
- Scroll down to **Default root objects** and enter `idnex.html`
1-4
- Create Distribution
1-5

## Step 2
**Wait for CloudFront Deployment**
- Waited until the distribution status changed to **Deployed**
- Copied the CloudFront domain name
2-1, 2-2

## Step 3
**Test the CloudFront URL**
- Opened the CloudFront URL in the browser
- Confirmed the S3-hosted website is served via CloudFront

## Step 4
**Restrict direct S3 access**
- Edited the S3 bucket policy to block public access directly
- Ensured access is only available through CloudFront OAC

![Bucket_policy_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_step1.PNG)
