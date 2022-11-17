pipeline {
    agent any
    
    stages {
        stage('fetching') {
            steps {
                sh 'echo "fetching"'
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], 
                extensions: [], userRemoteConfigs: [[url: 'https://github.com/eran8888/requests.git']]])
                  
            
            }

        }
        stage('build') {
            steps{
                sh 'echo "building"'
                sh 'python3 http_e.py'
                
            }
        }
        stage('testing') {
            steps{
                sh 'pytest TestRest.py'
                               
                }
            }
       
        }
        post{
            success{
                sh 'docker build -t requestFromJenkins'
            }
        }
}