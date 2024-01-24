provider "aws" {
  alias = "Dynamic_Lables"
  region = "us-east-1"
}

# Using the count variable to create multiple instances
resource "aws_instance" "Myinstances" {
  count         = 2
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  dynamic "instance" {
    for_each = range(count)
    content {
      name = "Dynamic_Instance-${instance.key + 1}"
    }
  }
}
