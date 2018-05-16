variable "region" {
  description = "The region for deployment"
  default     = "eu-west-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique!"
  default     = "tf-s3-statestore1122"
}

variable "dynamodb_statelock_name" {
  description = "The name of the DynamoDB table used to lock the state file."
  default     = "tf-dynamodb-statelock1122"
}
