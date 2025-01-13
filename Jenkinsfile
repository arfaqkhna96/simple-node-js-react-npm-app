pipeline {
    agent any
    stages {
        stage('Build') { 
            steps {
                script {
                    if (isUnix()) {
                        sh 'npm install'
                    } else {
                        bat 'npm install'
                    }
                }
            }
        }
        
        stage('Deliver') {
            steps {
                script {
                    if (isUnix()) {
                        sh './jenkins/scripts/deliver.sh'
                        input message: 'Finished using the web site? (Click "Proceed" to continue)'
                        sh './jenkins/scripts/kill.sh'
                    } else {
                        bat 'jenkins\\scripts\\deliver.bat'
                        input message: 'Finished using the web site? (Click "Proceed" to continue)'
                        bat 'jenkins\\scripts\\kill.bat'
                    }
                }
            }
        }
    }
}
