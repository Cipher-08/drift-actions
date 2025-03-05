terraform {
  backend "s3" {
    bucket = "firefly-drift-detection-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
