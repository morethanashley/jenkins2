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
                dir('my-webapp') {  // Change the working directory to 'my-webapp'
                    bat 'mvn clean package'  // Run Maven command inside 'my-webapp'
                }
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
                war: 'my-webapp/target/webapp.war'  // Path to the WAR file in 'my-webapp/target'
            }
        }
    }
}
