pipeline {
    agent any

    tools {
        maven 'maven-3.9.12'
        jdk 'jdk-21'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/DarshanG256/devops4'
            }
        }

        stage('Build with Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat-creds',
                        path: '',
                        url: 'http://localhost:8081'
                    )
                ],
                contextPath: 'my-webapp',
                war: 'target/webapp.war'
            }
        }
    }
}
