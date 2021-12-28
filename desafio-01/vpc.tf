resource "aws_vpc" "mackenzie_vpc_site" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mackenzie_vpc_site"
  }
}