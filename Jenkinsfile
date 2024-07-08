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

        node {
            stage('SCM') {
                checkout scm
            }
            stage('SonarQube Analysis') {
                def mvn = tool 'Default Maven';
                withSonarQubeEnv() {
                    sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=backteste"
                }
            }
        }


        stage('sonar analies') {

            environment {
                scannerHome = tool 'SONAR_SCANNER'
            }

            steps {

                withSonarQubeEnv('SONAR_LOCAL') {

                    sh "${scannerHome}/bon/sonar-sncanner -e " +
                            "-Dsonar.projectKey=teste-demo " +
                            "-Dsonar.host.url=http://localhost:9000 " +
                            "-Dsonar.java.login=sqa_4216c346426cd8788343d27d76b940230e0d575c " +
                            "-Dsonar.java.binaries=target " +
                            "-Dsonar.coverage.exclusions=**/.mvn"
                }
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