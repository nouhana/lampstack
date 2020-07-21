
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
    
    stage 'authentificate to gitlab registry'
	docker.withRegistry('https://gitlab.com/registry12', '6903ba2b-6894-45bb-aebb-425c2856ecc8')
        sh " docker login https://gitlab.com/registry12 -u elghandoury.nouhaila@gmail.com -p 123azerty "

	
}
