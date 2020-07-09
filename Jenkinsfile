	
node{
 
    stage 'Checkout'
        checkout scm
    stage 'Build & UnitTest'
        sh "docker build -t dockerstack_php_apache:B${BUILD_NUMBER} -f ./Dockerfile ."
        sh "docker build -t dockerstack_db:db-B${BUILD_NUMBER} -f ./mysql.Dockerfile ."
  
    stage 'Integration Test'
        sh "docker-compose -f /dockerstack/docker-compose.yml up --force-recreate --abort-on-container-exit"
        sh "docker-compose -f /dockerstack/docker-compose.yml down -v"
}
