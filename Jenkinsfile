pipeline {
    agent any
    stages {
        stage('1-clone') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/devbizguy-ep/devopstraining.git']])
            }
        }
        stage('2-user') {
            steps {
            sh 'whoami'
            }
        }
        stage('3-kernelversion') {
            steps {
                sh 'lsb_release'
            }
        }
    }
}