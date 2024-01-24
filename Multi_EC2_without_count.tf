provider "aws" {
  alias = "Multi_EC2"
  region = "us-east-1"
}

# Instance 1
resource "aws_instance" "instance_1" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance1"
  }
}

# Instance 2
resource "aws_instance" "instance_2" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance2"
  }
}

# Instance 3
resource "aws_instance" "instance_3" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance3"
  }
}
