terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.10.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-state-360783619044"     #globally unique
    key            = "cloud-devops-lab-2025/terraform.tfstate"  
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"  #in AWS account unique
    encrypt        = true
  }
}
