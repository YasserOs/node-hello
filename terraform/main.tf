resource "aws_ecr_repository" "app_ecr_repo" {
  name = "nodejs-app-repo"
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "nodejs-fargate-cluster" # Name your cluster here
}


output "app_url" {
  value = aws_alb.application_load_balancer.dns_name
}