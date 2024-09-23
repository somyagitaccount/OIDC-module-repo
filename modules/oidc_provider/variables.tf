variable "url" {
  description = "URL for IAM OpenID Connect Provider"
  type        = string
}

variable "client_id_list" {
  description = "Client ID list for IAM OIDC Provider"
  type        = list(string)
}

