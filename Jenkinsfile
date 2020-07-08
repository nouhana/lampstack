pipeline {
    agent any

    stages {
        
        stage('Staging') {
            steps {
               
                sh 'docker-compose --file /lampstack/dockerstack/docker-compose.yml up --build'
            }
        }
        
    }
}
