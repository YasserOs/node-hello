# main.tf
resource "aws_ecr_repository" "app_ecr_repo" {
  name = "nodejs-app-repo"
}