pipeline {
agent any

environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    AWS_DEFAULT_REGION    = 'us-east-1'
}

stages {

    stage('Checkout Code') {
        steps {
            checkout scm
        }
    }

    stage('Verify Terraform') {
        steps {
            sh 'terraform version'
        }
    }

    stage('Terraform Init') {
        steps {
            dir('assignment-7-githubactions-terraform') {
                sh 'terraform init'
            }
        }
    }

    stage('Terraform Validate') {
        steps {
            dir('assignment-7-githubactions-terraform') {
                sh 'terraform validate'
            }
        }
    }

    stage('Terraform Plan') {
        steps {
            dir('assignment-7-githubactions-terraform') {
                sh 'terraform plan -out=tfplan'
            }
        }
    }

    stage('Manual Approval') {
        steps {
            input 'Approve Terraform Apply?'
        }
    }

    stage('Terraform Apply') {
        steps {
            dir('assignment-7-githubactions-terraform') {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}

post {
    success {
        echo 'Terraform deployment successful'
    }

    failure {
        echo 'Terraform deployment failed'
    }
}


}
