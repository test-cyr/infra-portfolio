## Creating an Admin User on AWS IAM

## Summary
Create an IAM user with full administrative access to all AWS services

## Steps
1. Go to IAM → Users → Add user
2. Enger Username : `admin-user`
3. Enable console access & programmatic access
4. Attach policy : `AdministratorAccess`
5. Create and save the credentials

## Result
The `admin-user` should have full permissions on AWS, including EC2, S3, IAM, etc..
