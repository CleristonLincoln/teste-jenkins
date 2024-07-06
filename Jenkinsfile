pipeline {
    agent any

    environment {
        mavenHome = tool 'jenkins-maven'
    }

    tools {
        maven 'jenkins-maven'

    }

    stages {
        stage('Inicial') {
            steps {
                sh " echo testandoooooooo"
            }
        }

        stage('Test') {
            steps {
                sh "mvn test"
            }
        }

        stage('Build') {
            steps {
                sh "mvn clean package -DskipTests"
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