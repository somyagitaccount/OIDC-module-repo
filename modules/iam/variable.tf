variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "openid_connect_provider_arn" {
  description = "The ARN of the OIDC provider"
  type        = string
}


variable "github_repo_name" {
  description = "GitHub repository name in the format 'owner/repo'"
  type        = string
  default = "somyagitaccount/OIDC-module-test-repo"
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "policy_description" {
  description = "Description of the IAM policy"
  type        = string
  
}


