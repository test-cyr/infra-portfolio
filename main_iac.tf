# 1. set AWS provider
provider "aws" {
  region = "ap-northeast-2"  #you want to change region
}

# 2. create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "My_VPC"
  }
}

# 3. create Subnet
resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true  #Automatic Public IP Assignment
  tags = {
    Name = "My_Subnet"
  }
}

# 4. create Internet Gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags   = {
    Name = "My_IGW"
  }
}

# 5. create and connect route table
resource "aws_route_table" "my_route_table" {
  vpc_id       = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"  # Allows all IPs
    gateway_id = aws_internet_gateway.my_igw.id
   }
}
resource "aws_route_table_association" "my_route_table_assoc" {
   subnet_id      = aws_subnet.my_subnet.id
   route_table_id = aws_route_table.my_route_table.id
}

# 6. create Security Group
resource "aws_security_group" "my_sg" {
  name        = "my-sg"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.my_vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH access from all IPs
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP access from all IPs
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"   # Allow all traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "My_SG"
  }
}

# 7. create EC2 instance
resource "aws_instance" "my_web_server" {
  ami                    = "ami-0ae2c887094315bed"  # Amazon Linux AMI ID
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  subnet_id              = aws_subnet.my_subnet.id
  user_data              = <<-EOF
                           #!/bin/bash
                           sudo yum update -y
                           sudo yum install -y nginx
                           sudo systemctl start nginx
                           sudo systemctl enable nginx
                           EOF
  tags = {
    Name = "My_Web_Server"
  }
}

# 8. print the public IP of the EC2 instance
output "instance_public_ip" {
  value = aws_instance.my_web_server.public_ip
}
