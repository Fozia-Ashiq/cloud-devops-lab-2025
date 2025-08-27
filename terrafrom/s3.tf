resource "aws_s3_bucket" "tf_state" {
  bucket =  "terraform-state-360783619044"   # globally unique
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "terraform-state-bucket"
  }
}
