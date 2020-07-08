pipeline {
    agent any

    stages {
        
        stage('Staging') {
            steps {
               
                sh '/usr/local/bin/docker-compose --file /lampstack/dockerstack/docker-compose.yml up --build'
            }
        }
        
    }
}
