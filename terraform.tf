# terraform.tf
terraform {
   backend "s3" {
    encrypt = true
    bucket = "tf-s3-statestore1122"
    dynamodb_table = "tf-dynamodb-statelock1122"
    region = "eu-west-2"
    key = "global/s3/terraform.tfstate"
  } 
}
