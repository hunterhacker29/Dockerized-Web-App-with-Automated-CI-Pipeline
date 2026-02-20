provider "aws" {
  region = "eu-north-1"
}

# -------------------------------
# Security Group
# -------------------------------
resource "aws_security_group" "secure_sg" {

  name = "secure-ssh-sg-new"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["45.115.55.174/32"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

# -------------------------------
# EC2 Instance
# -------------------------------
resource "aws_instance" "devops_vm" {

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.secure_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              systemctl start docker
              systemctl enable docker
              docker pull advaithunter/moviemate-app:latest
              docker run -d -p 80:80 advaithunter/moviemate-app:latest
              EOF

  tags = {
    Name = "DevOps-Docker-Server"
  }

}
