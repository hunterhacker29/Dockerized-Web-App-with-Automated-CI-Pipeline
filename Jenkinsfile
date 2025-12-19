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
                trivy config terraform/ --severity HIGH,CRITICAL || true
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                cd terraform
                terraform init -input=false
                terraform plan
                '''
            }
        }
    }
}
