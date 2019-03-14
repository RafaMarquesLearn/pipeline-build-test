pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                powershell '\\prepare.ps1'
            }
        }
        stage('Build') {
            steps {
                powershell '\\build.ps1'
            }
        }
    }
}
