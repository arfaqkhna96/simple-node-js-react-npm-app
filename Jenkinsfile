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
    }
}
