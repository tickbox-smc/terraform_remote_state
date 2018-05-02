provider "aws" {
  region = "${var.region}"
}

# terraform state file setup
# create an S3 bucket to store the state file in
resource "aws_s3_bucket" "terraform-state-storage-s3" {
  bucket = "${var.bucket_name}"

  versioning {
    enabled = true
  }

  # NOTE this should be true but in dev false makes life easier
  lifecycle {
    prevent_destroy = false
  }

  tags {
      Name = "S3 Remote Terraform State Store"
  } 
}

# create a dynamodb table for locking the state file
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "${var.dynamodb_statelock_name}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags {
    Name = "DynamoDB Terraform State Lock Table"
  }
}

# This is being created to force a state change into S3
# Can be commented out to force change to prove versioning is taking place
#resource "aws_instance" "example" {
#  ami           = "ami-c12dcda6"
#  instance_type = "t2.micro"
#}
