provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "firefly_bucket" {
  bucket = "firefly-drift-detection-bucket"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.firefly_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
