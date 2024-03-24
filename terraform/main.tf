#Log the load balancer app URL
output "app_url" {
  value = aws_alb.application_load_balancer.dns_name
}

variable "tag" {
  default = "latest"
  type = string
}