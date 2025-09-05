## Summary
This step show how to automatically delete old object versions using an S3 lifecycle rule
It helps save storage space and keep your bucket clean

## Step 1
**Go to the `Management` tab of the versioned bucket**
- Opened the S3 bucket where versioning is enabled  
- Clicked on the Management tab at the top  
![lifecycle_policy_step1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/lifecycle_policy_step1.PNG)

## Step 2
**Create a lifecycle rule**
- Clicked Create lifecycle rule  
- Named the rule delete-old-versions  
- Selected `Apply to all objects in the bucket`
![lifecycle_policy_step2](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/lifecycle_policy_step2.PNG)
- Add lifecycle actions `Permanetly delete previous versions`  
- Set the number of days
![lifecycle_policy_step2_1](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/lifecycle_policy_step2_1.PNG)  

## Step 3
**Success lifecycle rule created**
![lifecycle_policy_step3](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/lifecycle_policy_step3.PNG)
