variable "region" {
     default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_ip" {
  default = true
}

variable "cidr_block" {
  default = "0.0.0.0/0"
}