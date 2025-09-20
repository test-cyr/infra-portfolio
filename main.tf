terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "my_first_instance" {
  ami           = "ami-077ad873396d76f6a"
  instance_type = "t2.micro"
  
  tags = {
    Name = "MyFirstEC2InstanceFromTerraform"
  }
}
