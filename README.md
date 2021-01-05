 this project explains how to package a web application in a Docker container image and run this image on a kubernetes(minikube) cluster, you then deploy the web application as a set of load-balanced duplicate instances that can be adapted to the needs of your users. 
in order to achieve a fully automated environment with Jenkins for development environments, we will go through containerizing a simple php application using Docker, building the image, uploading it to ACR and deploying it to Kubernetes (minikube).
Through this code we target to create a CI/CD pipeline with everything as code:

  Pipeline as code: We use Jenkinsfile to create declarative pipelines
  Infrastructure as code: We containerize the application using Docker & Docker compose
  Deployment as code: We use Kubernetes as our container orchestrator. Our deployments are declarative via code.

**Prerequisites**

As a prerequisite, you should be familiar with the fundamentals of:
  Jenkins (we are going to run this app on Jenkins).
  Docker & Docker compose must be installed on the Jenkins server.
  Kubernetes cluster. 
  Azure container registry

__Structure of The Code__

Let us take a look at how the code has been structured in our sample.

   ***DocumentRoot:*** This directory contains the source code of the application we are going to build and deploy.  
   
   ***docker-compose.yml:***  A YAML file to configure your application's services( PHP, Apache and MySQL).
   
   ***Dockerfile:*** This file contains the containerization code for our app
   
   ***conf:*** This directory contains the files which might be required by our Dockerfile to build the image. This may contain local yum repo configuration, pip files, apache configurations, etc.
   
   ***env:*** This directory contains the property file application.properties which can be changed to suit your project and your Docker//Kubernetes, etc.
   
   ***Jenkinsfile:*** This file contains the CI CD pipeline code which will be executed by Jenkins
   
   ***kubernetes-script:*** A collection of scripts for various tasks in Kubernetes (deployments, services, PV, PVC, limit range)
   
   ***monitoring:*** Grafana and Prometheus setup
