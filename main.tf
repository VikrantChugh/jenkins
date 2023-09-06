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
  region = "us-east-1"
}
resource "aws_instance" "example_server" {
  ami           = "ami-051f7e7f6c2f40dc1"
  instance_type = "t2.micro"
  subnet_id = "subnet-0129d612b8d2e83ec"

  tags = {
    Name = "vikrant"
    Owner = "vikrant@cloudeq.com"
  }
  volume_tags = {
    Name = "vikrant"
    Owner = "vikrant@cloudeq.com"
  }
}
