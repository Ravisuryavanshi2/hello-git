resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
}


resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id  
  cidr_block = var.subnet_cidr_block
  availability_zone  = "ap-northeast-3a"
}



resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet.id  
  key_name      = var.key

  tags = {
    Name = var.instance_name
  }
}



