# terraform.tf
terraform {
   backend "s3" {
    encrypt = true
    bucket = "dwp-cis-s3-tfstatestore"
    dynamodb_table = "dwp-cis-dynamodb-tfstatelock"
    region = "eu-west-2"
    key = "global/s3/terraform.tfstate"
  } 
}
