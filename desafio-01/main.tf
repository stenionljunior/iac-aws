# Configure the AWS Provider
provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "bucket-iac-aws"
    key    = "state-iac.tfstate"
    region = "us-east-1"
  }
}