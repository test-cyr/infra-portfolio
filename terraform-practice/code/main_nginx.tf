provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "exmaple" {
  ami           = "ami-0662f4965dfc70aca"
  instance_type = "t2.micro"

  associate_public_ip_address = true

  # Security Group, Key Pair, etc
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = "my-key"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "Terraform-Nginx"
  }
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"              # Security Group name
  description = "Allow HTTP inbound"  # Description

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80       # HTTP port
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow from anywhere
  }

  egress {
    from_port   = 0        # Allow all outbound
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
