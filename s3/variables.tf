variable "region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket for Terraform state storage"
  default     = "terraform-state-backend"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for Terraform state locking"
  default     = "dynamodb-backend-table"
}

variable "first" {
  description = "The name of the first S3 bucket"
  default     = "backend-s3"
}

variable "environment" {
  description = "The environment for which the resources are being deployed"
  default     = "dev"
}
