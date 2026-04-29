pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t nginx-jenkins .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f nginx-container || true
                docker run -d -p 8081:80 --name nginx-container nginx-jenkins
                '''
            }
        }
    }
}
