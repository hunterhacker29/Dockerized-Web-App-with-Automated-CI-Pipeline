provider "aws" {
  region = "eu-north-1"
}

# -------------------------------
# Security Group (SECURED – AI FIX)
# -------------------------------
resource "aws_security_group" "secure_sg" {
  name        = "secure-ssh-sg"
  description = "Security group hardened using AI recommendations"

  # ✅ FIX 1: Restrict SSH access (replace with YOUR public IP)
  ingress {
    description = "SSH access (RESTRICTED)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["YOUR_PUBLIC_IP/32"]
  }

  # HTTP access for app
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ✅ FIX 2: Restrict outbound traffic (HTTPS only)
  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -------------------------------
# EC2 Instance (SECURED – AI FIX)
# -------------------------------
resource "aws_instance" "devops_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [aws_security_group.secure_sg.name]

  # ✅ FIX 3: Enforce IMDSv2
  metadata_options {
    http_tokens = "required"
  }

  # ✅ FIX 4: Encrypt root volume
  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "DevOps-Secured-VM"
  }
}
