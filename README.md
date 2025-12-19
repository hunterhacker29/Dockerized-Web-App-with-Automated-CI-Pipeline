# 🎬 MovieMate – Dockerized Web App with Automated CI/CD & AI-Driven Security

MovieMate is an ad-free OTT-style web application that aggregates movies and TV shows into a single streaming platform.

This project demonstrates **end-to-end DevOps practices**, including:
- Dockerized application
- Infrastructure as Code using Terraform
- CI/CD automation with Jenkins
- Infrastructure security scanning using Trivy
- AI-driven remediation of cloud security vulnerabilities

---

## 🚀 Live Application

🌐 **Deployed URL:**  
https://movieweb-f2893.web.app/

📸 **Screenshots (Application UI):**
- Login page (Firebase Authentication)
- Home page with movie cards and dynamic content

*(Attach screenshots here)*

---

## ✨ Application Features

- Unified access to movies and TV shows  
- Ad-free viewing experience  
- Responsive React-based UI  
- Firebase Authentication (Email/Password + Google OAuth)  
- User profile management  
- Dynamic content loading with infinite scroll  

---

## 🛠️ Tech Stack

### Application
- **Frontend:** React.js  
- **Backend:** Node.js  
- **Authentication:** Firebase Authentication  
- **Database:** Firebase Realtime Database  
- **Hosting:** Firebase Hosting  

### DevOps & Cloud
- **Containerization:** Docker  
- **CI/CD:** Jenkins (Docker-based)  
- **Infrastructure as Code:** Terraform  
- **Security Scanning:** Trivy  
- **Cloud Provider:** AWS (EC2, Security Groups)  

---

## 🧩 CI/CD Pipeline Architecture

```text
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
The following vulnerabilities were intentionally introduced to demonstrate security detection:

SSH (port 22) open to 0.0.0.0/0

Unrestricted outbound traffic

Root block device not encrypted

IMDSv2 not enforced

📸 Screenshot Required (Before Remediation):

Jenkins pipeline FAILED

Trivy detecting HIGH / CRITICAL issues

(Attach Jenkins failure screenshot here)

🤖 AI-Driven Security Remediation
Using Trivy scan results from the Jenkins pipeline, AI-based recommendations were applied to fix the issues:

✅ Remediation Actions
SSH restricted to a specific public IP

Root block storage encryption enabled

IMDSv2 enforced

Outbound traffic restricted to HTTPS only

🔍 Trivy Vulnerability Report (Before Fix)
Detected issues included:

AVD-AWS-0107 – Open SSH access

AVD-AWS-0104 – Unrestricted egress

IMDS metadata security warnings

📸 Screenshot Required:

Trivy console output from Jenkins

(Attach Trivy console report screenshot here)

✅ Post-Remediation Verification
After applying the AI-recommended fixes:

Trivy scan reports 0 HIGH / CRITICAL issues

Jenkins pipeline completes successfully

Terraform initializes correctly

📸 Screenshot Required (After Remediation):

Jenkins pipeline SUCCESS

Trivy scan clean

(Attach Jenkins success screenshot here)

🔁 Jenkins Pipeline Stages
Checkout – Pull source code from GitHub

Infrastructure Security Scan – Trivy scans Terraform files

Terraform Plan – Dry run validation

⚠️ Note:
terraform apply is intentionally skipped due to missing AWS credentials in Jenkins to avoid exposing secrets.

📸 Screenshot Required:

Terraform init success

Terraform plan attempted / skipped

▶️ Run Locally
bash
Copy code
npm install
npm start
App runs at:
http://localhost:3000

👤 Author
Advait Jadhav

📌 Conclusion
This project demonstrates a real-world DevOps workflow where security is integrated into CI/CD pipelines.
It highlights how AI-assisted remediation improves cloud infrastructure security while maintaining automation and reliability.
