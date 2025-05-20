provider "aws" {
  region = us-west-2  # Missing quotes around the string value
}

resource "aws_instance" "example" {
  ami           = "ami-123456789"  # Example AMI ID
  instance_type = t2.micro  # Missing quotes around the string value

  tags = {
    Name = ExampleInstance  # Missing quotes around the string value
  }

  invalid_block {  # Invalid block name
    key = "value"
  }
}