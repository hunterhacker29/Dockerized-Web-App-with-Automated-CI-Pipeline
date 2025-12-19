provider "aws" {
  region = "eu-north-1"
}

# -------------------------------
# Security Group (INTENTIONALLY INSECURE)
# -------------------------------
resource "aws_security_group" "insecure_sg" {
  name        = "insecure-ssh-sg"
  description = "Security group with intentional vulnerability"

  # ❌ VULNERABILITY: SSH open to the world
  ingress {
    description = "SSH access (INSECURE)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access for app
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
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

  security_groups = [aws_security_group.insecure_sg.name]

  tags = {
    Name = "DevOps-Insecure-VM"
  }
}
