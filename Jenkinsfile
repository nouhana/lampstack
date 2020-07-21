
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
    
    stage 'push to azure container registry'
	withCredentials([usernamePassword( credentialsId: 'acr-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
	docker.withRegistry('dockerpvregistry.azurecr.io', 'docker-hub-credentials') {
           sh "docker login -u ${USERNAME} -p ${PASSWORD}"

        }
		
}
