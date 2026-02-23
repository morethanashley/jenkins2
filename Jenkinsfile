pipeline {
    agent any

    tools {
        maven 'maven'  // Use the Maven tool name configured in Global Tool Configuration
        jdk 'jdk-21'   // Use the 'jdk-21' configuration you have in Global Tool Configuration
        git 'git'       // Use the Git tool you configured in Global Tool Configuration
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
                    // Windows users: 'bat' is correct
                    // Linux users: replace with 'sh' like: sh 'mvn clean package'
                    bat 'mvn clean package'  
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat-creds', 
                        url: 'http://localhost:8081/manager/text'  // Update URL to match your Tomcat setup
                    )
                ],
                contextPath: 'my-webapp',
                war: 'my-webapp/target/webapp.war'  // Ensure the WAR file path is correct
            }
        }
    }
}
