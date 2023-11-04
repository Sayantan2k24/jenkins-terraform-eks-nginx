# This file should be always run before ant other .tf file
provider "aws" {
  region = "ap-south-1"
}
# create s3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sayantan-cicd-tf-eks" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
resource "aws_dynamodb_table" "eks_terraform_lock" {
  name         = "eks-terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
