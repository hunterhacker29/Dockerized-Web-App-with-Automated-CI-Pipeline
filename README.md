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

<img width="1919" height="995" alt="image" src="https://github.com/user-attachments/assets/d06cd69c-f079-4637-95f4-aa70322147f7" />
---
<img width="1920" height="1080" alt="Screenshot (610)" src="https://github.com/user-attachments/assets/13cb3f84-2215-45f9-aac2-c559dd104549" />
---
<img width="1920" height="1080" alt="Screenshot (612)" src="https://github.com/user-attachments/assets/d146f693-89f3-4ffb-81b5-2a03f93e2886" />
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

Developer
↓
GitHub Repository
↓
Jenkins Pipeline
├── Checkout Source Code
├── Trivy Infrastructure Security Scan
└── Terraform Plan (Dry Run)

yaml
Copy code

---

## 🔐 Infrastructure Security (Assignment Focus)

### ❌ Initial (Intentionally Insecure)
- SSH (port 22) open to `0.0.0.0/0`
- Unrestricted outbound traffic
- Root volume not encrypted
- IMDSv2 not enforced

These vulnerabilities were **intentionally introduced** for security testing.

---

## 🤖 AI-Driven Security Remediation

Using Trivy scan results from the Jenkins pipeline, AI-based recommendations were applied to fix the vulnerabilities:

- ✅ SSH restricted to a specific public IP
- ✅ Root block storage encrypted
- ✅ IMDSv2 enforced
- ✅ Outbound traffic restricted to HTTPS only

After remediation:
- Trivy scan reports **zero HIGH or CRITICAL issues**
- Jenkins pipeline completes successfully

---

## 🔁 Jenkins Pipeline Stages

1. **Checkout** – Pull code from GitHub
2. **Infrastructure Security Scan** – Trivy scans Terraform files
3. **Terraform Plan** – Dry run to validate infrastructure

> Terraform apply is intentionally not executed due to missing AWS credentials in Jenkins.

---

## 🖼️ Screenshots

- Application UI
- Jenkins pipeline execution
- Trivy vulnerability reports (before & after remediation)

*(Screenshots included in submission)*

---

## ▶️ Run Locally

```bash
npm install
npm start
App runs at:
http://localhost:3000

👤 Author
Advait Jadhav

📌 Conclusion
This project showcases a real-world DevOps workflow where infrastructure security is integrated into CI/CD pipelines.
It demonstrates how AI-assisted remediation can improve cloud security while maintaining automated delivery pipelines.




