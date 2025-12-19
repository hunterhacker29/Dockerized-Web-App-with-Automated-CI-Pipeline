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

Screenshots:
<img width="1920" height="1080" alt="Screenshot (609)" src="https://github.com/user-attachments/assets/86778c61-c793-4f5e-9503-2d72e3ac52ca" />
<img width="1920" height="1080" alt="Screenshot (610)" src="https://github.com/user-attachments/assets/f8b6a1e6-1664-41ce-a7e5-11a1264cdfb4" />
<img width="1920" height="1080" alt="Screenshot (611)" src="https://github.com/user-attachments/assets/3be064af-e70d-4680-9a9c-6014559d6442" />



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

## 🖼️ Screenshots (Mandatory Submission Evidence)

### 1️⃣ Jenkins Pipeline – Initial Failing Scan (Before Remediation)

**Description:**  
This screenshot shows the Jenkins pipeline failing due to infrastructure security vulnerabilities detected by Trivy.

**Issues Identified:**
- SSH open to the world
- Unrestricted outbound traffic
- Unencrypted root volume
- IMDSv2 not enforced

📸 **Upload Screenshot Here**  
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b173161f-cdb3-480c-873e-f74c33e986f5" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/649d5c9f-7196-4dc9-9ad2-35ebbc7577d9" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/19baca05-1b3a-44ba-aacb-7d32350f3137" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/d84d4526-9749-4f4f-811a-7c8a6c4e9f07" />


---

### 2️⃣ Trivy Security Vulnerability Report (Before Remediation)

**Description:**  
Console output from Jenkins showing Trivy-detected security vulnerabilities in Terraform configuration.

📸 **Upload Screenshot Here**  
<img width="1920" height="1080" alt="Screenshot (615)" src="https://github.com/user-attachments/assets/50c2759f-392e-4c17-a491-cd68dc1cd19a" />
<img width="1920" height="1080" alt="Screenshot (618)" src="https://github.com/user-attachments/assets/3552357e-e6c8-44c0-b7d8-fe36d859e6e5" />
<img width="1920" height="1080" alt="Screenshot (619)" src="https://github.com/user-attachments/assets/d3611770-1f45-4a16-af8e-8ce5a470c9ca" />
<img width="1474" height="736" alt="image" src="https://github.com/user-attachments/assets/7b235374-219e-48c8-b040-3151fc3e62a6" />

---

### 3️⃣ Jenkins Pipeline – Successful Scan (After Remediation)

**Description:**  
This screenshot confirms that after applying AI-recommended fixes, the Jenkins pipeline completed successfully with no HIGH or CRITICAL issues.

📸 **Upload Screenshot Here**  
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/9edcfa8e-0674-49a9-8139-be3487dccf4b" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2d98111a-665b-4ae1-a75a-3b93107ee729" />


---

### 4️⃣ Trivy Security Report (After Remediation)

**Description:**  
Final Trivy scan output showing zero critical or high-severity vulnerabilities after securing the infrastructure.

📸 **Upload Screenshot Here**  
<img width="1416" height="670" alt="image" src="https://github.com/user-attachments/assets/0a97476f-e2e0-4b30-a544-c2a065aceca2" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8c58d223-d16c-4ff5-a5f0-722053e47c60" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c28609df-18d4-4a6a-b9e8-9764d3a1a26b" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/ba150bb3-b41c-4036-b65c-e53e2045b983" />





---

### 5️⃣ Application Running on Cloud Public IP / Domain

**Description:**  
Proof that the application is successfully deployed and accessible via cloud hosting.

📸 **Upload Screenshot Here**  
[ Application Running on Cloud Public IP / Domain ]

<img width="1920" height="1080" alt="Screenshot (625)" src="https://github.com/user-attachments/assets/c9a3bb4e-c4b5-4a0b-97ed-cd9d9ae624db" />
![Uploading Screenshot (626).png…]()
<img width="1920" height="1080" alt="Screenshot (627)" src="https://github.com/user-attachments/assets/ac301a55-24fb-46fa-bcf1-a500dc49b910" />

---

## 🧠 AI Usage Log (Mandatory)

### 🔹 Exact AI Prompt Used
Analyze the following Trivy security scan results for Terraform AWS infrastructure and suggest secure configuration changes to remediate all HIGH and CRITICAL vulnerabilities while following AWS security best practices.



### 🔹 Summary of Identified Risks
- Public SSH access allowing brute-force attacks
- Unencrypted root storage risking data exposure
- IMDSv1 enabled, vulnerable to SSRF attacks
- Open outbound traffic increasing data exfiltration risk

### 🔹 How AI-Recommended Changes Improved Security
- Restricted SSH access reduced attack surface
- Encryption ensured data protection at rest
- IMDSv2 enforcement prevented metadata abuse
- Controlled outbound traffic limited unauthorized data flow

---
## 📂 Repository Structure

├── Dockerfile
├── docker-compose.yml
├── Jenkinsfile
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ └── terraform.tfvars
├── src/
├── public/
└── README.md

---

## 👤 Author

**Advait Jadhav**

---

## 📌 Conclusion

This project showcases a real-world DevOps workflow where infrastructure security is integrated directly into the CI/CD pipeline.  
It highlights how **AI-assisted remediation** can effectively improve cloud security while maintaining automation and delivery speed.




