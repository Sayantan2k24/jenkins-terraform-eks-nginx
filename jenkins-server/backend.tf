terraform {
  backend "s3" {
    bucket         = "sayantan-cicd-tf-eks"
    key            = "jenkins/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}