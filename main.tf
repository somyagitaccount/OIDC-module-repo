module "oidc_provider" {
  source = "./modules/oidc_provider" # Path to the module directory

  url            = var.url
  client_id_list = var.client_id_list
  
}

module "iam_role_module" {
  source = "./modules/iam"  # Path to the IAM module folder

  # Passing the variables from the .tfvars file
  role_name                 = var.role_name
  openid_connect_provider_arn = var.openid_connect_provider_arn
  github_repo_name          = var.github_repo_name
  policy_name               = var.policy_name
  policy_description        = var.policy_description
}


module "s3_bucket" {
  source = "./modules/s3"  # Path to your s3 module

  s3_bucket_name   = var.s3_bucket_name
  bucket_name_tag  = var.bucket_name_tag
  environment_tag  = var.environment_tag
}


module "dynamodb_table" {
  source = "./modules/dynamodb"

  dynamodb_table_name = var.dynamodb_table_name
  hash_key_value      = var.hash_key_value
  attribute_name      = var.attribute_name
  attribute_type      = var.attribute_type
}

module "ec2_instance" {
  source = "./modules/ec2"

  AMI               = var.AMI
  ec2_instance_type = var.ec2_instance_type
  instance_name     = var.instance_name
}


