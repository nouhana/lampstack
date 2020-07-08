pipeline {
    agent any

    stages {
        
        stage('Staging') {
            steps {
               
                sh 'sudo docker-compose --file _dockerstack/docker-compose.yml up --build -d'
            }
        }
        
    }
}
