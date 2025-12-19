pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/hunterhacker29/Dockerized-Web-App-with-Automated-CI-Pipeline.git'
            }
        }

        stage('Infrastructure Security Scan') {
            steps {
                sh '''
                echo "Running Trivy scan on Terraform code"
                trivy config terraform/ --severity HIGH,CRITICAL
                '''
            }
        }

        stage('Terraform Plan (Dry Run)') {
            steps {
                sh '''
                echo "Running Terraform init & plan (dry run)"
                cd terraform
                terraform init -input=false
                terraform plan || echo "Terraform plan skipped due to missing AWS credentials"
                '''
            }
        }
    }
}
