resource "aws_subnet" "mackenzie_subnet_site" {
  vpc_id     = aws_vpc.mackenzie_vpc_site.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "mackenzie_subnet_site"
  }
}