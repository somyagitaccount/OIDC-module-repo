resource "aws_dynamodb_table" "state_lock" {
  name         = var.dynamodb_table_name
  hash_key     = var.hash_key_value
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = var.attribute_name
    type = var.attribute_type
  }
}
