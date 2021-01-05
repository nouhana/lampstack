
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        
        sh "docker-compose -f ./dockerstack/docker-compose.yml build"
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	
    stage 'authentificate and push to acr'
	sh "az login -u  username -p pass"
	sh "az acr login --name dockerimagesregistry"
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

    

	
}
