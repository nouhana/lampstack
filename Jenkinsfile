
node {
	
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./dockerstack/Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./dockerstack/mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f ./dockerstack/docker-compose.yml up --build -d"
	
    stage 'authentificate to gitlab registry'
        sh "docker login -u gitlab-deploy -p Ko2iSxBxKH_A5YtKSyBv https://gitlab.com/registry12"
	
    stage 'push to gcr'
	sh "docker-compose -f ./dockerstack/docker-compose.yml push"

	
}
