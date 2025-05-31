pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t springboot-app .'
            }
        }
        stage('Deploy Docker Container') {
            steps {
                sh '''
                docker rm -f springboot-app || true
                docker run -d -p 8081:8080 --name springboot-app springboot-app
                '''
            }
        }
    }
}
