pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        
        stage('Deploy') {
            environment {
                SERVER_IP = '192.168.22.01'
            }
            steps {
                sh 'npm run build'
                sh "scp -r ./dist user@${SERVER_IP}:~/my-node-app"
                sshagent (credentials: ['ssh-credentials-id']) {
                    sh "ssh user@${SERVER_IP} 'cd ~/my-node-app && docker-compose up -d'"
                }
            }
        }
    }
}
