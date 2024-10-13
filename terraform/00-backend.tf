terraform {
  backend "s3" {
    bucket         = "rsschool-devops-terraform-state-bucket"
    key            = "terraform/state.tfstate"
    # dynamodb_table = "terraform-lock-table"
    encrypt        = true
    region         = "eu-west-1"
  }
}

# resource "aws_s3_bucket" "terraform_state_s3" {
#   bucket = "rsschool-devops-terraform-state-bucket"
#   tags = {
#     name = "TerraformState"
#   }
# }