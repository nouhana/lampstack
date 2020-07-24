
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	
    stage 'authentificate to gitlab registry'
	sh "docker login dockerpvregistry.azurecr.io -u dockerpvregistry -p O+gfJw=3g+VkHoEzcY2gTNZXQKOmz1Fl"
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

	
}
