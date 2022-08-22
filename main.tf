provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUHJIXGLJZQIZRPMH"
  secret_key = "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"
}
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-bucket-deepika"

}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_iam-user"
}