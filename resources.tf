resource "aws_s3_bucket" "my_s3_bucket" {
  bucket_prefix = "project_aware_workspace"
  force_destroy = true
  tags = {
    Name        = "project_aware_workspace bucket"
    Environment = local.environment_name
  }
}

resource "aws_sqs_queue" "my_sqs_queue" {
  name                      = "project_aware_workspace"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Name        = "project_aware_workspace queue"
    Environment = local.environment_name
  }
}