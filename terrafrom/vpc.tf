terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.10.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"   # apne region ke hisaab se change karo
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "cloud-devops-vpc"
  }
}
