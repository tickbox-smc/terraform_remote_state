# terraform.tf
terraform {
   backend "s3" {
    encrypt = true
    bucket = "tickbox-smc-s3-statestore"
    dynamodb_table = "tickbox-smc-dynamodb-statelock"
    region = "eu-west-2"
    key = "global/s3/terraform.tfstate"
  } 
}
