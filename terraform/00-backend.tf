terraform {
  backend "s3" {
    bucket         = "rsschool-devops-terraform-state-bucket"
    key            = "terraform/state.tfstate"
    encrypt        = true
    region         = "eu-west-1"
  }
}
