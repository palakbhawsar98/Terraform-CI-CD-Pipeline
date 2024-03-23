pipeline {
    agent any

    environment {
        AWS_ROLE = credentials('IAM_ROLE')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/palakbhawsar98/Terraform-CI-CD-Pipeline.git'
            }
        }

        stage('TFLint') {
            steps {
                dir('Terraform-CI-CD-Pipeline') {
                    sh 'tflint'
                }
            }
        }

        stage('TFSec') {
            steps {
                sh 'tfsec'
            }
        }

        stage('Terratest') {
            steps {
                // Change directory to the test directory
                dir('test') {
                    sh 'go test'
                }
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
