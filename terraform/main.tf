#Log the load balancer app URL
output "app_url" {
  value = aws_alb.application_load_balancer.dns_name
}

resource "aws_s3_bucket" "bucket" {
    bucket = "yosm-terraform-state-bucket"
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }
}

resource "aws_dynamodb_table" "terraform-lock" {
    name           = "terraform_state_lock_table"
    attribute {
        name = "LockID"
        type = "S"
    }
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    

}