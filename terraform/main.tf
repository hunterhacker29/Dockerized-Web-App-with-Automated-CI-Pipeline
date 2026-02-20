# -------------------------------
# EC2 Instance (SECURE + DOCKER DEPLOYMENT)
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

  # ✅ Install Docker and Run Your App Automatically
  user_data = <<-EOF
              #!/bin/bash

              # Update system
              yum update -y

              # Install Docker
              amazon-linux-extras install docker -y

              # Start Docker
              systemctl start docker
              systemctl enable docker

              # Pull your Docker image
              docker pull advaithunter/moviemate-app:latest

              # Run container
              docker run -d -p 80:80 advaithunter/moviemate-app:latest

              EOF

  tags = {
    Name = "DevOps-Secure-VM"
  }

}
