module "oidc_provider" {
  source = "./modules/oidc_provider" 

  url            = var.url
  client_id_list = var.client_id_list
  }

module "iam_role_module" {
  source = "./modules/iam"  
  
  role_name                 = var.role_name
  openid_connect_provider_arn = module.oidc_provider.oidc_provider_arn
  policy_name               = var.policy_name
  policy_description        = var.policy_description
}

module "s3_bucket" {
  source = "./modules/s3"  

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


