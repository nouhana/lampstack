
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        
        sh "docker-compose -f ./dockerstack/docker-compose.yml build"
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	
    stage 'authentificate and push to acr'
	sh "az login -u a138007047@taalim.ma -p Vlea1233"
	sh "az acr login --name dockerpvregistry"
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

	
}
