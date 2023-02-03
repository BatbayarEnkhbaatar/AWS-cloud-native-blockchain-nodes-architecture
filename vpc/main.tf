provider "aws" {
  region = "us-east-1"
}


########## create VPC ###########

resource "aws_vpc" "vpc-devnet" {
  cidr_block       = "10.173.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-devnet"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id = aws_vpc.vpc-devnet.id
  cidr_block = "10.173.0.0/24"
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id = aws_vpc.vpc-devnet.id
  cidr_block = "10.173.1.0/24"
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_internet_gateway" "igw-vpc-devnet" {
  vpc_id = aws_vpc.vpc-devnet.id
  tags = {
      Name = "igw-vpc-devnet"
  }
}


##### Security Group Configuration starts from here ######


resource "aws_security_group" "public-sg-devnet" {
  name        = "public-sg-devnet"
  description = "Allow HTTP inbound traffic"
  vpc_id      = aws_vpc.vpc-devnet.id

  ingress {
    description      = "HTTP from public access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public-sg-devnet"
  }
}

resource "aws_security_group" "private-sg-devnet" {
  name        = "private-sg-devnet"
  description = "Allow inbound traffic from "
  vpc_id      = aws_vpc.vpc-devnet.id

  ingress {
    description      = "allow traffic from public sg"
    from_port        =  30333
    to_port          = 30333
    protocol         = "tcp"
    cidr_blocks      = [aws_subnet.public-subnet-1.cidr_block]
  }
  ingress {
    description      = "allow traffic from public sg"
    from_port        =  9943
    to_port        = 9943
    protocol         = "tcp"
    cidr_blocks      = [aws_subnet.public-subnet-1.cidr_block]

  }
    ingress {
    description      = "allow traffic from public sg"
    from_port        =  9944
    to_port          = 9944
    protocol         = "tcp"
    cidr_blocks      = [aws_subnet.public-subnet-1.cidr_block]
  }

  tags = {
    Name = "private-sg-devnet"
  }
}