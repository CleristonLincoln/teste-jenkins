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
                echo 'tentando buildar'
                bat '.\\mvnw clean package'
            }
        }
    }
}