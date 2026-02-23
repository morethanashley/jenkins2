pipeline {
    agent any

    tools {
        maven 'maven'  // This matches the Maven tool name configured in Global Tool Configuration
        jdk 'jdk-21'   // This uses the 'jdk-21' configuration you have in Global Tool Configuration
        git 'git'       // This specifies the Git tool you configured in Global Tool Configuration
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/morethanashley/jenkins2.git'
            }
        }

        stage('Build with Maven') {
            steps {
                dir('my-webapp') {
                    bat 'mvn clean package'  // Use 'sh' instead of 'bat' for Linux
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat-creds',
                        url: 'http://localhost:8081/manager/text'  // Ensure this is the correct Tomcat Manager URL
                    )
                ],
                contextPath: 'my-webapp',
                war: 'my-webapp/target/webapp.war'  // Make sure the WAR file path is correct
            }
        }
    }
}
