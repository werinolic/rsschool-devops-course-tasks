resource "aws_iam_openid_connect_provider" "github_actions" {
  client_id_list  = ["sts.amazonaws.com"]
  url             = "https://token.actions.githubusercontent.com"
  thumbprint_list = ["74F3A68F16524F15424927704C9506F55A9316BD"]
}
