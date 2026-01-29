terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAFAKEKEY1234567890"
  secret_key = "fakeSecretKeyForTerraformDemoOnly123456"
}


resource "aws_instance" "ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "Variable-EC2"
  }
}
