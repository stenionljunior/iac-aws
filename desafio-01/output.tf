output "instance_public_ip" {
  value = aws_instance.ec2-iac-site.public_ip
}

output "instance_arn" {
  value = aws_instance.ec2-iac-site.arn
}

output "instance_public_dns" {
  value = aws_instance.ec2-iac-site.public_dns
}