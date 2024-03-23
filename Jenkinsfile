pipeline {
    agent any

    stages {
      
        stage('TFLint') {
            steps {
                    sh 'cd Terraform-CI-CD-Pipeline/'
                    sh 'tflint --init'
                    sh 'tflint'
                
            }
        }

        stage('TFSec') {
            steps {
                sh 'tfsec'
            }
        }

        stage('Terratest') {
            steps {
                    sh 'cd Terraform-CI-CD-Pipeline/test'
                    sh 'go mod init github.com/palakbhawsar98/Terraform-CI-CD-Pipeline'
                    sh 'go mod tidy'
                    sh 'go test'
                }
            }
        

        stage('Terraform workflow') {
            steps {
                dir('..') {
                    sh 'terraform init'
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }   
    }
}
