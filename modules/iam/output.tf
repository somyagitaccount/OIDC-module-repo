output "role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.custom_trust_policy_role.name
}

output "policy_arn" {
  description = "ARN of the IAM policy"
  value       = aws_iam_policy.full_access_policy.arn
}
