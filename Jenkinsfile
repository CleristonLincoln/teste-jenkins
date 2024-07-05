pipeline {
    agent any

       environment {
           mavenHome = tool 'jenkins-maven'
     }

    tools {
        maven 'jenkins-maven'
        jdk 'Java 17.0.4.1'
    }

    stages {
        stage('Inicial'){
            steps {
                sh " echo testandoooooooo"
            }
        }

        stage('Build'){
            steps {
                sh "mvn clean package -DskipTests"
            }
        }

        stage('Test'){
            steps{
                bat "mvn test"
            }
        }

        stage('Deploy') {
            steps {
                bat "mvn jar:jar deploy:deploy"
            }
        }
    }
}