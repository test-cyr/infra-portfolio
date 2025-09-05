# S3 Versioning Practice

## Summary
In this step, I enabled versioning on the bucket and tested how to roll back to previous version of the `index.html` file  

## Step 1
**Enable Versioning on Your Bucket**
- Navigate to Services → S3  
- Select the bucket you want to enable versioning for  
- Go to the Properties tab  
- Scroll down to the Bucket Versioning section  
![Bucket_versioning_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/bucket_versioning_step1.PNG)  
- Click Edit, then select Enable, and save chagnes  
![Bucket_versioning_step1_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/bucket_versioning_step1_1.PNG)

## Step 2
**Upload Objects to the Versioned Bucket**
- Use the AWS Console, CLI, or SDK to upload files to the bucket
- Each new upload with the same object key creates a new version
![Bucket_versioning_step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/bucket_versioning_step2.PNG) 

## Step 3
**View Object Versions**
- Go to the bucket in the AWS Console  
- Enable Show versions toggle in the object list view
![Bucket_versioning_step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/bucket_versioning_step3.PNG)  
- All versions of an object, including deleted markers, will be displayed
![Bucket_versioning_step3_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/bucket_versioning_step3_1.PNG) 

## Step 4
**Resotre or Delete Specific Versions**
- Select the desired object version from the version list  
- To restore, copy the version to the latest version or download it  
- To delete, select the version and delete it; the bucket retains previous versions unless permanently removed  
![Bucket_versioning_step4](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/bucket_versioning_step4.PNG)  

## Notes
- Versioning protects against accidental overwrites and deletions
- It may increase storage costs because all versions are saved
- Consider life cycle policies to clean up old versions automatically
