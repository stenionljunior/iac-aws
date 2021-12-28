variable "sg_ec2_iac_site" {
  description = "Allowed Ec2 ports"
  type        = list(number)
  default     = [80, 443, 22]
}
resource "aws_security_group" "sg_ec2_ports_allow" {

  name = "ec2_sg_desafio"
  description = "SG EC2 site"
  vpc_id = aws_vpc.mackenzie_vpc_site.id
  dynamic "ingress" {
    for_each = var.sg_ec2_iac_site
    content {
      from_port   = ingress.key
      to_port     = ingress.key
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  }

  dynamic "egress" {
    for_each = var.sg_ec2_iac_site
    content {
      from_port   = egress.key
      to_port     = egress.key
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  } 
}