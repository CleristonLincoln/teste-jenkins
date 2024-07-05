pipeline {
    agent any

    /*   environment {
           mavenHome = tool 'jenkins-maven'
     }

       tools {
           jdk 'java-17'
       }*/

    stages {
        stage('Inicial'){
            steps {
                sh " echo testandoooooooo"
            }
        }

        stage('Build'){
            steps {
                bat "mvn clean package -DskipTests"
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