resource "aws_instance" "my_ec2" {
  ami           = var.AMI
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.instance_name
  }
}
