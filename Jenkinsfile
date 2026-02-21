pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "advaithunter/moviemate-app"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/hunterhacker29/Dockerized-Web-App-with-Automated-CI-Pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:latest .'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub',
                    usernameVariable: 'USERNAME',
                    passwordVariable: 'PASSWORD'
                )]) {

                    sh '''
                    echo $PASSWORD | docker login -u $USERNAME --password-stdin
                    docker push $DOCKER_IMAGE:latest
                    '''
                }
            }
        }

        stage('Deploy to AWS') {
            steps {
                sh '''
                cd terraform
        
                echo "Cleaning old terraform files..."
                rm -rf .terraform
                rm -f terraform.lock.hcl
        
                echo "Running terraform init..."
                terraform init
        
                echo "Running terraform apply..."
                terraform apply -auto-approve
                '''
                }
            }

    }
}


