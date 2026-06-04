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

stage('Terraform Apply') {
    steps {
        dir('assignment-7-githubactions-terraform') {
            sh 'terraform apply -auto-approve tfplan'
        }
    }
}