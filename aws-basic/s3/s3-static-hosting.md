## Hosting a Static Website using Amazon S3

# Summary

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
