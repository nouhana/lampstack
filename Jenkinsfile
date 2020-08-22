
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        
        sh "docker-compose -f ./dockerstack/docker-compose.yml build"
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	
    stage 'authentificate and push to acr'
	sh "az login -u k137495561@taalim.ma -p am@123ina"
	sh "az acr login --name dockerprivatereg"
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

    

	
}
