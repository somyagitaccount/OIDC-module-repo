variable "dynamodb_table_name" {
  description = "DynamoDB table name"
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
  description = "Attribute type for the DynamoDB table"
  type        = string
}
