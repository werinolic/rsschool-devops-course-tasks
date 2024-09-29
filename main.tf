terraform {
  backend "s3" {
    bucket         = "rsschool-devops-terraform-bucket"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
