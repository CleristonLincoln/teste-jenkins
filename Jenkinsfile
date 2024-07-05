pipeline {
    agent any

    stages {
        stage('estagio inicial') {
            steps {
                echo 'testando'
            }
        }

        stage('limpando projeto') {
            steps {
                bat 'mvn clean'
            }
        }
    }
}