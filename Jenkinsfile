
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerpvregistry.azurecr.io/dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerpvregistry.azurecr.io/dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	
    stage 'authentificate to gitlab registry'
	sh "az login -u a138007047@taalim.ma -p Vlea1233"
	sh "az acr login --name dockerpvregistry"
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

	
}
