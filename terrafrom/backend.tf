terraform {
  backend "s3" {
    bucket         =  "terraform-state-360783619044"
    key            = "infra/terraform.tfstate"
    region         =  "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
