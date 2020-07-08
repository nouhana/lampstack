pipeline {
    agent any

    stages {
        
        stage('Staging') {
            steps {
               
                sh '/usr/local/bin/docker-compose --file dockerstack/docker-compose.yml up --build --env-file=dockerstack/.env --force-recreate '
            }
        }
        
    }
}
