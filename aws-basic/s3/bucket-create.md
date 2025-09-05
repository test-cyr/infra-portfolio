# Create an S3 Bucket

## Summary
In this step, I created a new S3 bucket to prepare for static website hosting.
To make the website accessible to the public, I disabled all block public access settings.

## AWS S3 Bucket Settings
**Bucket name** `s3-static-site-20250717`  
**Region** `ap-northeast-2 (Seoul)`  
**Block all public access** Disabled (all unchecked)  
**Acknowledged warning** Yes  

## Steps Taken
1. Navigated to [AWS S3 Console]`(https://console.aws.amazon.com/s3)`
2. Clicked **Create bucket**  
![Bucket step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_bucket_step1.png)
3. Entered a unique bucket name: `s3-static-site-20250717`  
![Bucket step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_bucket_step2.PNG)
4. Chose the region: `ap-northeast-2 (Seoul)`  
5. **Unchecked all block pulic access options**  
![Bucket step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_bucket_step3.PNG)
![Bucket step3-1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_bucket_step3_1.PNG)
6. Acknowledged the public access warning
7. Default Encryption  
![Bucket step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/create_bucket_step4.PNG)
8. Bucket Key (default set)  
9. Clicked **Create bucket**  
![Bucket step5](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/created_bucket.PNG)
