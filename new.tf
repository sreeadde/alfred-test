provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-example-bucket"  # Quotes added
  acl    = "private"

  versioning {
    enabled = true  # Corrected to boolean
  }

  tags = { 
    Environment = "Production",
    CostCenter  = "12345"  # Corrected to string
  }

  lifecycle {
    prevent_destroy = true  # Corrected to boolean
  }
}