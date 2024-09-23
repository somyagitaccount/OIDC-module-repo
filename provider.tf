terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-s3-statefile-bucket"
    dynamodb_table = "terraform-statelock-table"
    key = "global/s3/terraform.tfstate"
    region = "us-west-2"
    encrypt =  true
  }
}

