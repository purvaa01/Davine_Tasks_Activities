terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "web_server" {
  name        = "week6-web-server-sg"
  description = "Security group for week6 activity"
  vpc_id      = var.vpc_id
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.web_server.id]
  tags                   = { Name = "Week6-ansible-server" }
}


