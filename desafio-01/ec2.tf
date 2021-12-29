data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ec2-iac-site" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.mackenzie_subnet_site.id
  vpc_security_group_ids = [aws_security_group.sg_ec2_ports_allow.id]
  associate_public_ip_address = var.public_ip


  tags = {
    Name = "ec2-iac-site"
    Ambiente = "Development"
    Time = "Mackenzie"
    Aplicacao = "Site"
    BU = "Conta Digital"
  }
}