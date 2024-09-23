#variable declaration of OIDC provider module


variable "url" {
  description = "URL for IAM OpenID Connect Provider"
  type        = string
}

variable "client_id_list" {
  description = "Client ID list for IAM OIDC Provider"
  type        = list(string)
}

#variable declaration of IAM module

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

# variable "openid_connect_provider_arn" {
#   description = "ARN of the OpenID Connect provider"
#   type        = string
# }

variable "github_repo_name" {
  description = "GitHub repository name in the format 'owner/repo'"
  type        = string
  default = "somyagitaccount/OIDC-final"
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "policy_description" {
  description = "Description of the IAM policy"
  type        = string
  
}

#variable declaration of s3 module
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string 
}

variable "bucket_name_tag" {
  description = "Tag for the S3 bucket name"
  type        = string
}

variable "environment_tag" {
  description = "Tag to specify the environment for the S3 bucket (e.g., Dev, Staging, Prod)"
  type        = string 
}


#variable declaration of dynamodb table module
variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "hash_key_value" {
  description = "Hash key for the DynamoDB table"
  type        = string
}

variable "attribute_name" {
  description = "Attribute name for the DynamoDB table"
  type        = string
}

variable "attribute_type" {
  description = "Attribute type for the DynamoDB table (e.g., S for String)"
  type        = string
}

#variable declaration of ec2 module
variable "AMI" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}
