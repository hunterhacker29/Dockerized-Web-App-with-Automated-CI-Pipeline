provider "aws" {
  region = "eu-north-1"
}

# -------------------------------
# Secure Security Group (AI Remediated)
# -------------------------------
resource "aws_security_group" "secure_sg" {
  name        = "secure-ssh-sg"
  description = "Security group secured using AI recommendations"

  # ✅ Restrict SSH to YOUR public IP only
  ingress {
    description = "SSH access (restricted)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["45.115.55.174/32"]
  }

  # ✅ Allow HTTP (for app access)
  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ✅ Restrict outbound traffic (HTTPS only)
  egress {
    description = "Allow outbound HTTPS only"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -------------------------------
# Secure EC2 Instance (AI Remediated)
# -------------------------------
resource "aws_instance" "devops_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [aws_security_group.secure_sg.name]

  # ✅ Enforce IMDSv2
  metadata_options {
    http_tokens = "required"
  }

  # ✅ Encrypt root volume
  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "DevOps-Secure-VM"
  }
}
