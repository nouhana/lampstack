
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
    
    stage 'authentificate to gitlab registry'
        sh " docker login https://gitlab.com/registry12 -u elghandoury.nouhaila@gmail.com -p 123azerty "
	sh "docker tag dockerstack_php_apache:B${BUILD_NUMBER} registry12/dockerstack_php-apache/dockerstack_php_apache:B${BUILD_NUMBER}"
	sh "docker tag dockerstack_db:db-B${BUILD_NUMBER} registry12/dockerstack_php-apache/dockerstack_db:db-B${BUILD_NUMBER}"
	sh "docker push registry12/dockerstack_php-apache/dockerstack_php_apache:B${BUILD_NUMBER}"
	sh "docker push registry12/dockerstack_php-apache/dockerstack_db:db-B${BUILD_NUMBER}"


       

	
}
