provider "aws" {
  region = "eu-north-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
