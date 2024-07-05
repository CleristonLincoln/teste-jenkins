pipeline {
    agent any

       environment {
           mavenHome = tool 'jenkins-maven'
     }

    tools {
        maven 'jenkins-maven'

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
                sh "mvn test"
            }
        }

      /*  stage('Deploy') {
            steps {
                sh "mvn jar:jar deploy:deploy"
            }
        }
        */
    }
}