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
                sh '.\\mvnw clean package'
            }
        }
    }
}