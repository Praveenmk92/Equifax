provider "aws" {
  alias = "Lables"
  region = "us-east-1"
}

# Using the count variable to create multiple instances
resource "aws_instance" "Mynewinstances" {
  count         = 2
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  tags = {
    Name         = "Equifax_Instances"
    Environment  = "Production"
    Owner        = "Equifax"
  }
}
