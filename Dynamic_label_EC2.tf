provider "aws" {
  alias = "Dynamic_Lables"
  region = "us-east-1"
}

# Using the count variable to create multiple instances
resource "aws_instance" "Myinstances" {
  count         = 2
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  dynamic "tag" {
    for_each = range(2)
    content {
      key   = "Name"
      value = "Instance-${tag.key + 1}"
    }
  }

  dynamic "tag2" {
    for_each = range(2)
    content {
      key   = "Environment"
      value = "Production-${tag.key + 1}"
    }
  }

  dynamic "tag3" {
    for_each = range(2)
    content {
      key   = "Owner"
      value = "Owner-${tag.key + 1}"
    }
  }
}
