terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-1"
  #profile = ""
}

resource "aws_instance" "example_server" {
  ami           = "ami-08a3598dcc4bcf46c"
  instance_type = "t2.micro"

  tags = {
    Name = "e"
  }
}
