provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

# Using the count variable to create multiple instances with different tag names
resource "aws_instance" "Multi_EC2" {
  count         = 2
  ami           = "ami-0a3c3a20c09d6f377" 
  instance_type = "t2.micro"              

  tags = {
    Name = "Instance-${count.index + 1}" 
  }
}
