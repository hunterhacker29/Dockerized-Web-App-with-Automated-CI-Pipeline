# 🎬 MovieMate – Dockerized Web App with Automated CI/CD & AI-Driven Security

MovieMate is an **ad-free OTT-style web application** that aggregates movies and TV shows into a single streaming platform.

This project demonstrates **end-to-end DevOps principles**, including:
- Application containerization
- Infrastructure as Code (Terraform)
- CI/CD automation using Jenkins
- Infrastructure security scanning with Trivy
- AI-driven remediation of cloud security vulnerabilities

---

## 📌 Project Overview

**Role:** DevOps Engineer  
**Goal:** Ensure cloud infrastructure is **secure by default** before deployment.

The project covers:
- Secure cloud provisioning
- Automated security checks in CI/CD
- AI-assisted infrastructure hardening

---

## ☁️ Cloud Provider Used

- **Cloud Platform:** AWS
- **Services Used:**
  - EC2 (Virtual Machine)
  - Security Groups (Firewall rules)

---

## 🛠️ Tools & Technologies

### Application Stack
- **Frontend:** React.js
- **Backend:** Node.js
- **Authentication:** Firebase Authentication
- **Database:** Firebase Realtime Database
- **Hosting:** Firebase Hosting

### DevOps Stack
- **Containerization:** Docker
- **CI/CD:** Jenkins (Docker-based)
- **Infrastructure as Code:** Terraform
- **Security Scanner:** Trivy
- **AI Assistance:** ChatGPT (for security remediation)

---

## 🚀 Live Application

🌐 **Deployed URL:**  
https://movieweb-f2893.web.app/

### 📸 Screenshots – Application UI
*(Attach screenshots below)*

- Login Page (Firebase Authentication)
- Home Page with Movie Cards


[Insert Application UI screenshots here]
🧩 Architecture Overview
High-Level Flow

Developer
   ↓
GitHub Repository
   ↓
Jenkins CI/CD Pipeline
   ├── Checkout Source Code
   ├── Trivy Security Scan (Terraform)
   └── Terraform Plan (Dry Run)
🧱 Infrastructure as Code (Terraform)
Terraform provisions:

AWS EC2 instance

Networking via Security Groups

❌ Initial (Intentionally Insecure Configuration)
The following vulnerabilities were intentionally introduced:

SSH (22) open to 0.0.0.0/0

Unrestricted outbound traffic

Root disk not encrypted

IMDSv2 not enforced

Purpose: Demonstrate detection and remediation

🔐 Before Security Report (FAILED Pipeline)
❌ Jenkins Pipeline – Before Remediation
📍 Stage: Infrastructure Security Scan
📍 Tool: Trivy

Detected Issues:

AVD-AWS-0107 – SSH open to the world

AVD-AWS-0104 – Unrestricted egress

Root volume not encrypted

IMDS metadata risks

📸 Screenshot Required

=
[Insert Jenkins FAILED pipeline screenshot here]
📋 Trivy Vulnerability Report (Console Output)
This satisfies Assignment Requirement – Core Task #4

“Copy the Trivy vulnerability report from Jenkins console”

📸 Screenshot Required


[Insert Trivy console output screenshot here]
🤖 AI-Driven Security Remediation (Core Task)
AI Prompt Used (Mandatory)
Analyze the Trivy security scan report for Terraform.
Explain the risks and rewrite the Terraform code to fix all
HIGH and CRITICAL vulnerabilities following AWS security best practices.
AI-Identified Risks
Public SSH exposure enables brute-force attacks

Unrestricted egress allows data exfiltration

Unencrypted disks risk data theft

IMDSv1 enables metadata exploitation

AI-Recommended Fixes Applied
SSH restricted to specific public IP

Root volume encryption enabled

IMDSv2 enforced

Outbound traffic restricted to HTTPS (443)

✅ After Security Report (SUCCESS Pipeline)
✅ Jenkins Pipeline – After Remediation
Results:

Trivy scan: 0 HIGH / CRITICAL issues

Terraform initialized successfully

Pipeline completed with SUCCESS

📸 Screenshot Required


[Insert Jenkins SUCCESS pipeline screenshot here]
🔁 Terraform Plan (Dry Run)
Terraform plan is executed as a dry run.

Status:

terraform init → SUCCESS

terraform plan → Skipped (no AWS credentials in CI)

📸 Screenshot Required

[Insert Terraform plan output screenshot here]
⚠ Terraform apply is intentionally skipped to avoid exposing cloud credentials.

🖼️ Required Screenshots Checklist (Evaluator Friendly)
✅ Application running on public URL

❌ Jenkins failed pipeline (before remediation)

📋 Trivy vulnerability report

✅ Jenkins success pipeline (after remediation)

🔁 Terraform plan output

▶️ Run Application Locally
npm install
npm start
Application runs at:
http://localhost:3000

🎥 Video Demonstration (Mandatory)
📌 5–10 minute screen recording covering:

Jenkins pipeline execution

Trivy security scan

Terraform plan

Application running on public URL

🔗 Video Link:


[Insert video recording link here]
📂 Repository Contents
Dockerfile

docker-compose.yml

Jenkinsfile

terraform/ (secured version)

README.md (this file)

👤 Author
Advait Jadhav

📌 Conclusion
This project demonstrates how DevOps + Security + AI can be combined to:

Prevent insecure cloud deployments

Shift security left into CI/CD

Automatically detect and remediate risks

Maintain secure, automated infrastructure delivery



---

### ✅ What you should do NOW
1. Open **README.md** in GitHub
2. **Replace everything** with the above content
3. Commit with message:
Add final README with DevOps architecture, security reports, and AI remediation





