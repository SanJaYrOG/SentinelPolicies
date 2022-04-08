terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "me-south-1"
}
resource "aws_instance" "web" {
  ami           = "ami-0b4946d7420c44be4"
  instance_type = "t2.micro"

  tags = {
    Name = "sanjay"
  }
}
