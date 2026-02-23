pipeline {
    agent any

    tools {
        maven 'maven'  // Use the correct tool name based on the Maven configuration in Jenkins
        jdk 'jdk-21'   // This is correctly set, assuming 'jdk-21' is configured
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/morethanashley/jenkins2'
            }
        }

        stage('Build with Maven') {
            steps {
                dir('my-webapp') {
                    // Running the Maven build using the 'maven' tool configured in Jenkins
                    bat 'mvn clean package'  // 'bat' is for Windows. If using a Linux agent, replace with 'sh'
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [
                    tomcat9(
                        credentialsId: 'tomcat-creds',
                        url: 'http://localhost:8081/manager/text'  // Assuming this is your Tomcat Manager URL
                    )
                ],
                contextPath: 'my-webapp',
                war: 'my-webapp/target/webapp.war'  // Specify the exact location of the war file
            }
        }
    }
}
