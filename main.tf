terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "example_server" {
  ami           = "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  subnet_id = "subnet-0962069167a59d185"

  tags = {
    Name = "vikrant"
    Owner = "vikrant@cloudeq.com"
  }
  volume_tags = {
    Name = "vikrant"
    Owner = "vikrant@cloudeq.com"
  }
}
