variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "bucket_name_tag" {
  description = "Tag for S3 bucket name"
  type        = string
}

variable "environment_tag" {
  description = "Environment tag for S3 bucket"
  type        = string
}
