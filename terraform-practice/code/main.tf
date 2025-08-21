provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "exmaple" {
  ami           = "ami-0662f4965dfc70aca"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExample"
  }
}
