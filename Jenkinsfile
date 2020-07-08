pipeline {
    agent any

    stages {
        
        stage('Staging') {
            steps {
               
                sh 'docker-compose --file dockerstack/docker-compose.yml up --build -d'
            }
        }
        
    }
}
