resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = var.bucket_name_tag
    Environment = var.environment_tag
  }
}
