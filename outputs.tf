output "s3_bucket_arn" {
  value = "${aws_s3_bucket.terraform-state-storage-s3.arn}"
}
