# terraform_remote_state

[See https://medium.com/@jessgreb01/how-to-terraform-locking-state-in-s3-2dc9a5665cb6]

*** NOTE ***

You need to create the S3 bucket and DynamoDB table before you set the backend (terraform.tf) 

Once the S3 bucket and the DB Table have been created, the terraform.tf should be created and the folder reinitialised. 

Do import any existing state to the S3 bucket

Future changes will record the state in the S3