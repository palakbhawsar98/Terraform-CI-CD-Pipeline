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
                // Change directory to the test directory
                dir('test') {
                    sh 'cd Terraform-CI-CD-Pipeline/test'
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
