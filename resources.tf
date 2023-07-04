resource "aws_s3_bucket" "my_s3_bucket" {
  bucket_prefix = "${local.environment_name}-bucket"
  force_destroy = true
  tags = {
    Name        = "project_aware_workspace bucket"
    Environment = local.environment_name
  }
}
