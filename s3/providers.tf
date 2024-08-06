provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket         = "terraform.tfstate-254"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb"  
    encrypt        = true
  }
}
