terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket = "my-bucket-098765432123456"
#     dynamodb_table = "my-state-lock-table"
#     key = "global/s3/terraform.tfstate"
#     region = "us-west-2"
#     encrypt =  true
#   }
# }

