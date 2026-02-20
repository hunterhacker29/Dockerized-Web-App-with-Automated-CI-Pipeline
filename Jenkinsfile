// pipeline {
//     agent any

//     stages {

//         stage('Checkout') {
//             steps {
//                 git branch: 'main',
//                     url: 'https://github.com/hunterhacker29/Dockerized-Web-App-with-Automated-CI-Pipeline.git'
//             }
//         }

//         stage('Infrastructure Security Scan') {
//             steps {
//                 sh '''
//                 echo "Running Trivy scan on Terraform code"
//                 trivy config terraform/ --severity HIGH,CRITICAL
//                 '''
//             }
//         }

//         stage('Terraform Plan (Dry Run)') {
//             steps {
//                 sh '''
//                 echo "Running Terraform init & plan (dry run)"
//                 cd terraform
//                 terraform init -input=false
//                 terraform plan || echo "Terraform plan skipped due to missing AWS credentials"
//                 '''
//             }
//         }
//     }
// }







pipeline {
agent any

```
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
                usernameVariable: 'admin',
                passwordVariable: '3ebe91070cc54c01b60d425407c1a810'
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
            terraform apply -auto-approve
            '''
        }
    }

}
```

}
