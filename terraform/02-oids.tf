resource "aws_iam_openid_connect_provider" "github_actions" {
  client_id_list  = ["sts.amazonaws.com"]
  url             = "https://token.actions.githubusercontent.com"
  thumbprint_list = ["031267cb-8610-49a0-a7ea-62e3a5dc781e"]
}
