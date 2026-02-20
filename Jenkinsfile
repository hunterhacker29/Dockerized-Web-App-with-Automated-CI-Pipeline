
Jenkins **does NOT support backticks ```**. Those are only for ChatGPT / Markdown.

---

# ✅ FIXED Jenkinsfile (COPY THIS EXACTLY)

**Replace your entire Jenkinsfile with this:**

```groovy
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
                terraform init
                terraform apply -auto-approve
                '''
            }
        }

    }
}
