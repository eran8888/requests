pipeline {
    agent any
    environment{
        cloneRepo = 'https://github.com/eran8888/requests.git'
    }
    

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
                sh '''
                echo "building"
                python http_e.py
                '''
            }
        }
        stage('testing') {
            steps{
                sh '''
                echo "testing"
                python TestRest.py
                '''  
                
                }
            }
       
        }
}