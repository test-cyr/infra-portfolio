# IAM Policy Practice - EC2 Read Only Access

## Goal
Grant an IAM user Read-only access to Amazon EC2 and verify the permission works correctly

## Step 1
- Logged in using the newly created IAM user (`test-user-iam`)
- Navigated to EC2 from the AWS Management Console
- Got a permission error : _You are not authorized to perform this action_

## Step 2
- Logged back in with the root or admin account
- Go to **IAM > Users > test-user-iam > Add Permissions**
- Chose "Attach policies directly"
- Selected the policy : `AmazonEC2ReadOnlyAccess`

## Step 3
- Logged in again with the IAM user
- Opened EC2 dashboard - this time, access was granted
- Can view instances and EC2 resources but **cannot** create or modify them
