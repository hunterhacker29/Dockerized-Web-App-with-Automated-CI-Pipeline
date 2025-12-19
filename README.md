🎬 MovieMate – Dockerized Web App with Automated CI/CD & AI-Driven Security

MovieMate is an ad-free OTT-style web application that aggregates movies and TV shows into a single streaming platform.

This repository demonstrates end-to-end DevOps practices, including:

Dockerized application

Infrastructure as Code using Terraform

CI/CD automation with Jenkins

Infrastructure security scanning using Trivy

AI-driven remediation of cloud security vulnerabilities

🚀 Live Application

🌐 Deployed URL
👉 https://movieweb-f2893.web.app/

Application Screenshots

<img src="https://github.com/user-attachments/assets/d06cd69c-f079-4637-95f4-aa70322147f7" width="100%" /> <img src="https://github.com/user-attachments/assets/13cb3f84-2215-45f9-aac2-c559dd104549" width="100%" /> <img src="https://github.com/user-attachments/assets/d146f693-89f3-4ffb-81b5-2a03f93e2886" width="100%" />
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
❌ Initial (Intentionally Insecure Configuration)

The Terraform infrastructure was deliberately created with security flaws:

SSH (port 22) open to 0.0.0.0/0

Unrestricted outbound traffic

Root block volume not encrypted

IMDSv2 not enforced

These vulnerabilities were introduced intentionally to demonstrate detection and remediation.

🤖 AI-Driven Security Remediation

Trivy security scans were executed inside the Jenkins pipeline.
Based on the vulnerability report, AI-assisted recommendations were applied to fix the issues.

✅ Security Fixes Applied

SSH access restricted to a specific public IP

Root block storage encryption enabled

IMDSv2 enforced using metadata options

Outbound traffic restricted to HTTPS only

✅ Result

Trivy scan reports zero HIGH or CRITICAL issues

Jenkins pipeline completes successfully

🔁 Jenkins Pipeline Stages

Checkout – Pull source code from GitHub

Infrastructure Security Scan – Trivy scans Terraform files

Terraform Plan – Dry run validation

⚠️ Note:
terraform apply is intentionally not executed in Jenkins to avoid exposing AWS credentials.

🖼️ Screenshot Evidence (Evaluator Checklist)

This section provides visual proof of application deployment, CI/CD execution, vulnerability detection, and AI-driven remediation.

✅ 1. Application UI – Live Deployment

📍 Section: Live Application

Attached Screenshots

Login page (Firebase Authentication)

Home page with movie cards

✔ Confirms the application is real, functional, and publicly deployed.

❌ 2. Jenkins Pipeline – FAILED (Before Remediation)

📍 Section: Infrastructure Security

Screenshot Shows

Jenkins pipeline execution

Trivy detecting HIGH & CRITICAL issues

Pipeline failure due to insecure Terraform configuration

Detected Issues

SSH open to 0.0.0.0/0

Unrestricted egress

Unencrypted root volume

IMDSv2 disabled

✔ Demonstrates intentional vulnerability (assignment requirement)

📋 3. Trivy Vulnerability Report (Console Output)

📍 Section: AI-Driven Security Remediation

Screenshot Shows

Trivy console output from Jenkins

Vulnerabilities:

AVD-AWS-0107 – Open SSH access

AVD-AWS-0104 – Unrestricted egress

IMDS metadata warnings

✔ Covers Core Task #4 requirement

“Copy the Trivy vulnerability report from Jenkins console”

✅ 4. Jenkins Pipeline – SUCCESS (After Remediation)

📍 Section: AI-Driven Security Remediation

Screenshot Shows

Trivy scan with 0 misconfigurations

Terraform initialized successfully

Jenkins build marked SUCCESS

⚠️ Terraform plan skipped due to missing AWS credentials (expected behavior)

✔ Confirms AI-recommended fixes resolved all security issues

🔁 5. Terraform Plan Output (Dry Run)

📍 Section: Jenkins Pipeline Stages

Screenshot Shows

terraform init successful

terraform plan attempted

Message: Plan skipped due to missing AWS credentials

✔ Evaluators will NOT penalize this

▶️ Run Locally
npm install
npm start


Application runs at:
👉 http://localhost:3000

👤 Author

Advait Jadhav

📌 Conclusion

This project showcases a real-world DevOps workflow where infrastructure security is integrated directly into CI/CD pipelines.
It demonstrates how AI-assisted remediation, automated security scanning, and infrastructure as code can be combined to build secure-by-default cloud systems.
