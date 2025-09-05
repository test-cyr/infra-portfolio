# Hosting a Static Website using Amazon S3

## Summary
In this step, I configured my S3 bucket for static website hosting
I also updated the bucket policy to allow public access and verified the site works via the browser


## Step 1
**Create an S3 Bucket**
- Created a new S3 bucket named
- Disbled Block all public access during bucket creation
- Region : an-northeast-2

## Step 2
**Set bucket policy for public access** 
- Went to the Permission tab 
- Added a bucket policy to allow public read access  
![Bucket_policy_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_step1.PNG)  

## Step 3
**Upload the website file**
- Uploaded a simple index.html file containing basic HTML  
- The file was placed in the root of the bucket  
![Bucket_policy_step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_index_file_step2.PNG)   
![Bucket_policy_step2_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_index_file_step2_1.PNG)  

## Step 4
**Enable static website hosting**
- Went to the Properties tab  
- Enabled Static website hosting  
- Set index document to index.html  
![Bucket_policy_step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_step3.PNG)  

## Step 5
**Access the website via public URL**
- Copied the S3 website endpoint  
- Opened the URL in a browser to varify the site  
- ex) `http://s3-static-20250717.s3-website.ap-northeast-2.amazonaws.com/`  
![Bucket_policy_step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/policy_bucket_step4.PNG)
