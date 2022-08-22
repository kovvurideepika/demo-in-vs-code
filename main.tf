provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUHJIXGLJXUZFVVFV"
  secret_key = "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"
}
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-bucket-deep"

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