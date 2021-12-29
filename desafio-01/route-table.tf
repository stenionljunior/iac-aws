resource "aws_internet_gateway" "gw_site" {
  vpc_id = aws_vpc.mackenzie_vpc_site.id

  tags = {
    Name = "InternetGatewaySite"
  }
}

resource "aws_egress_only_internet_gateway" "egress" {
  vpc_id = aws_vpc.mackenzie_vpc_site.id
}

resource "aws_route_table" "route_table_site" {
  vpc_id = aws_vpc.mackenzie_vpc_site.id

  route {
    cidr_block = var.cidr_block
    gateway_id = aws_internet_gateway.gw_site.id
  }

  tags = {
    Name = "route_table_mackenzie_site"
  }
}