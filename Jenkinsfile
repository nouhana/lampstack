
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	sh "docker tag dockerstack_php_apache:B${BUILD_NUMBER} registry.gitlab.com/registry12/dockerstack_php-apache:B${BUILD_NUMBER}"
    
    stage 'authentificate to gitlab registry'
        docker.withRegistry('https://gitlab.com/registry12/', '6903ba2b-6894-45bb-aebb-425c2856ecc8')
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

	

	
}
