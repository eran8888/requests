pipeline {
    agent any 
    

    stages {
        stage('fetching') {
            steps {
                sh 'echo "fetching"'
                git clone 'https://github.com/eran8888/requests.git'
            
            }

        }
        stage('build') {
            steps{
                sh 'echo "building"'
                python http_e.py
            }
        }
        stage('testing') {
            steps{
                sh 'echo "testing"'
                python TestRest.py    
                
                }
            }
       
        }
}