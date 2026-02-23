pipeline {
    agent any

    tools {
        maven 'maven'
        jdk 'jdk-21'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/morethanashley/jenkins2'
            }
        }

        stage('Build with Maven') {
            steps {
                dir('my-webapp') {  // Navigate into the my-webapp directory where pom.xml is located
                    bat 'mvn clean package'  // Use 'sh' instead of 'bat' for Linux agents
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat-creds',
                        path: '',
                        url: 'http://localhost:8081'  // Ensure this is the correct Tomcat Manager URL
                    )
                ],
                contextPath: 'my-webapp',
                war: 'my-webapp/target/webapp.war'  // Correct path to WAR file inside my-webapp
            }
        }
    }
}
