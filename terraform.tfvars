# Values defined for the following variables
url            = "https://token.actions.githubusercontent.com"
client_id_list = ["sts.amazonaws.com"]

role_name                 = "custom_trust_policy_role"
policy_name               = "full_access_policy"
policy_description        = "Policies granting full access to everything"

s3_bucket_name   = "terraform-s3-statefile-bucket"
bucket_name_tag  = "Terraform-State"
environment_tag  = "Dev"

dynamodb_table_name = "terraform-statelock-table"
hash_key_value      = "LockID"
attribute_name      = "LockID"
attribute_type      = "S"

AMI               = "ami-08d8ac128e0a1b91c"   
ec2_instance_type = "t2.micro"
instance_name     = "MyEC2Instance"


