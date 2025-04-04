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


# Create an EC2 instance using the Amazon Linux AMI
resource "aws_instance" "test" {
  ami           = "ami-00a929b66ed6e0de6" # Use the ID of the most recent Amazon Linux 2 AMI
  instance_type = "t2.micro"                    # Instance type, modify if needed

  }
