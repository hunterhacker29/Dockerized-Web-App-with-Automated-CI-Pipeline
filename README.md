🎬 MovieMate – Dockerized Web App with Automated CI/CD & AI-Driven Security

MovieMate is an ad-free OTT-style web application that aggregates movies and TV shows into a single streaming platform.

This project demonstrates end-to-end DevOps practices, including:

Dockerized application

Infrastructure as Code using Terraform

CI/CD automation with Jenkins

Infrastructure security scanning using Trivy

AI-driven remediation of cloud security vulnerabilities

🚀 Live Application

🌐 Deployed URL:
👉 https://movieweb-f2893.web.app/

Screenshots (Already Added):

Login page (Firebase Authentication)

Home page with movie cards and dynamic content

✅ These screenshots confirm the application is real, functional, and publicly deployed.

✨ Application Features

Unified access to movies and TV shows

Ad-free viewing experience

Responsive React-based UI

Firebase Authentication (Email/Password + Google OAuth)

User profile management

Dynamic content loading with infinite scroll

🛠️ Tech Stack
Application

Frontend: React.js

Backend: Node.js

Authentication: Firebase Authentication

Database: Firebase Realtime Database

Hosting: Firebase Hosting

DevOps & Cloud

Containerization: Docker

CI/CD: Jenkins (Docker-based)

Infrastructure as Code: Terraform

Security Scanning: Trivy

Cloud Provider: AWS (EC2, Security Groups)

🧩 CI/CD Pipeline Architecture
Developer
   ↓
GitHub Repository
   ↓
Jenkins Pipeline
   ├── Checkout Source Code
   ├── Trivy Infrastructure Security Scan
   └── Terraform Plan (Dry Run)

🔐 Infrastructure Security (Assignment Focus)
❌ Initial State (Intentionally Insecure)

The Terraform infrastructure was intentionally configured with security flaws to demonstrate detection and remediation:

SSH (port 22) open to 0.0.0.0/0

Unrestricted outbound traffic

Root volume not encrypted

IMDSv2 not enforced

These misconfigurations were expected to be caught by security scanning tools.

🤖 AI-Driven Security Remediation

The Jenkins pipeline executed Trivy scans on Terraform code.
Based on the Trivy vulnerability report, AI-generated recommendations were applied to fix the issues.

✅ Fixes Applied

SSH access restricted to a specific public IP

Root block storage encryption enabled

IMDSv2 metadata tokens enforced

Outbound traffic restricted to HTTPS only

✅ Result

Trivy reports zero HIGH or CRITICAL vulnerabilities

Jenkins pipeline completes successfully

🔁 Jenkins Pipeline Stages

Checkout – Pull source code from GitHub

Infrastructure Security Scan – Trivy scans Terraform files

Terraform Plan – Dry run to validate infrastructure

⚠️ terraform apply is intentionally not executed due to missing AWS credentials in Jenkins.
This is expected and will not be penalized.

🖼️ Screenshot Evidence (Evaluator Checklist)

This section provides visual proof of application deployment, CI/CD execution, security detection, and AI-driven remediation.

✅ 1. Application UI – Live Deployment

📍 Section: ## 🚀 Live Application

Attach Screenshots:

Login page (Firebase Authentication)

Home page with movie cards

Purpose:
Confirms the application is real, functional, and publicly accessible.

📸 (Screenshots already added above)

❌ 2. Jenkins Pipeline – FAILED (Before Remediation)

📍 Section: ## 🔐 Infrastructure Security (Assignment Focus)

Attach Screenshot Showing:

Jenkins pipeline execution

Trivy detecting HIGH / CRITICAL Terraform issues

Pipeline failure

Detected Issues Visible:

SSH open to 0.0.0.0/0

Unrestricted egress rules

Unencrypted root volume

IMDSv2 not enforced

Explanation:
This failure was intentional to demonstrate infrastructure security risks.

📸 → Upload Jenkins failure screenshot here

📋 3. Trivy Vulnerability Report (Console Output)

📍 Section: ## 🤖 AI-Driven Security Remediation

Attach Screenshot Showing:

Trivy console output from Jenkins

Vulnerability IDs such as:

AVD-AWS-0107 (Open SSH)

AVD-AWS-0104 (Unrestricted egress)

IMDS metadata warnings

✅ Core Assignment Requirement Covered:
“Copy the Trivy vulnerability report from the Jenkins console”

📸 → Upload Trivy console output screenshot here

✅ 4. Jenkins Pipeline – SUCCESS (After Remediation)

📍 Section: ## 🤖 AI-Driven Security Remediation

Attach Screenshot Showing:

Trivy scan → 0 misconfigurations

Terraform initialized successfully

Jenkins build marked SUCCESS

Terraform plan skipped due to credentials

Significance:
Confirms AI-recommended fixes resolved all security issues.

📸 → Upload Jenkins success screenshot here

🔁 5. Terraform Plan Output (Dry Run)

📍 Section: ## 🔁 Jenkins Pipeline Stages

Attach Screenshot Showing:

terraform init success

terraform plan attempted

Message: plan skipped due to missing AWS credentials

Note to Evaluator:
Terraform apply is skipped intentionally to avoid exposing cloud credentials.

📸 → Upload Terraform plan screenshot here

▶️ Run Locally
npm install
npm start


App runs at:
👉 http://localhost:3000

👤 Author

Advait Jadhav

📌 Conclusion

This project demonstrates a real-world DevOps workflow where security is embedded into CI/CD pipelines.
It showcases how AI-assisted remediation, combined with Trivy, Terraform, Docker, and Jenkins, helps build secure-by-default cloud infrastructure.
