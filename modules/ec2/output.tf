output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}
