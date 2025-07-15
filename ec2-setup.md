# EC2 Instance Setup

## Ojbective
Create and connect to a virtual server using AWS EC2 Free Tier

## Setup 1
- Instance type : t2.micro
- OS : Amazon Linux 2
- Key pair used : my-key.pem

## Tools Used
- AWS EC2 (Amazon Elastic Compute Cloud)
- Key Pair (PEM file)
- Security Group
- SSH (Secure Shell)

## Steps (Setup)
1. Go to the EC2 Dashboard

2. Click "Lanch Instance"
<img width="1767" height="846" alt="인스턴스 생성 과정_1" src="https://github.com/user-attachments/assets/7d2d3052-cf33-4325-938a-2f083ba93f5d" />

3. Select Amazon Linux 2023 (Free tier eligible)

4. Choose `t2.micro` as the instance type
<img width="1757" height="731" alt="인스턴스 생성 과정_2" src="https://github.com/user-attachments/assets/96a4ed1d-e561-4596-a921-33d7fdd74abe" />

5. Create or select a Key Pair (.pem) file
<img width="565" height="522" alt="인스턴스 생성 과정_3" src="https://github.com/user-attachments/assets/50ca176c-1253-4401-8a62-ee894545d284" />

6. Configure the security group to allow SSH (port 22)
<img width="1903" height="853" alt="인스턴스 생성 과정_4" src="https://github.com/user-attachments/assets/2f13c9bf-0c9b-4b04-a193-6f8f12939404" />

7. Lanuch the instance and copy the public IPv4 address
<img width="1920" height="845" alt="인스턴스 생성 과정_5" src="https://github.com/user-attachments/assets/10699f18-97ff-47ea-8a47-b2197a874bba" />

8. Connect terminal:
ssh -i "my-key.pem" ec2-user@<your-public-ip>
<img width="1046" height="688" alt="퍼블릭ip로 change" src="https://github.com/user-attachments/assets/1155df06-383e-4a58-80df-65a5fa1fe0e9" />

9. ssh first connection
<img width="759" height="226" alt="접속성공" src="https://github.com/user-attachments/assets/c3ba326b-4c9b-4513-9f72-6be87fb397c6" />

## Basic Info
1. EC2 basic info
<img width="898" height="616" alt="ec2-basic-info" src="https://github.com/user-attachments/assets/7d8834a7-387c-4854-bc54-6903ae882949" />

## Steps (Setup Apache)
1. package update
: sudo yum update -y
<img width="958" height="86" alt="package update" src="https://github.com/user-attachments/assets/54941157-83a1-4245-8efe-caa8bd1ef847" />

2. Apache download
: sudo yum install httpd -y
<img width="831" height="986" alt="apache download_1" src="https://github.com/user-attachments/assets/be2a39b7-fb68-49dd-8215-223d7214297a" />
<img width="769" height="137" alt="apache download_2" src="https://github.com/user-attachments/assets/03d02d25-4bef-4e5f-a407-41c9e485f998" />

3. Start Apache
: sudo systemctl start httpd
: sudo systemctl enable httpd
<img width="963" height="70" alt="start apache" src="https://github.com/user-attachments/assets/bebaa7fc-c158-413d-ad81-7003d6a5cdd3" />

4. Apache default page
<img width="709" height="367" alt="apache-default-page" src="https://github.com/user-attachments/assets/c90ba1ce-90ee-4803-b26a-621fb1b7f201" />

4-1 Apache custom page
: echo "<h1>Hello from EC2</h1>" | sudo tee /var/www/html/index.html
<img width="872" height="38" alt="apache-custom-page_1" src="https://github.com/user-attachments/assets/deb54a30-d0e3-49c9-9255-8f65f75deffc" />
<img width="723" height="233" alt="apache-custom-page_result" src="https://github.com/user-attachments/assets/003f259b-63f5-480f-89b1-e8c31382f70c" />





