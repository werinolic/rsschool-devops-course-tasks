terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "terraform/state.tfstate"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
    region         = "us-east-1"
  }
}

resource "aws_s3_bucket" "terraform_state_s3" {
  bucket = "terraform-state-bucket"
  tags = {
    name = "TerraformState"
  }
}