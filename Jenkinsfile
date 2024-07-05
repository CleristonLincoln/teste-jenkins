pipeline {
    agent any

    stages {
        stage('estagio inicial') {
            steps {
                echo 'testando'
            }
        }

        stage('Backend clean and build') {
            steps {
                bat 'mvn clean package -DskipTests=true'
            }
        }
    }
}