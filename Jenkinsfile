pipeline {
    agent any
    tools {
        maven 'maven_3_5_0'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/serkan-can-eyvaz/Vize_YMG2']]
                )
                bat 'mvn clean install'
            }
        }
        stage('Stop and Remove Existing Container') {
                             steps {
                                 script {
                                   // Varolan container'ı durdur ve sil
                                            bat 'docker stop demo-container '
                                            bat 'docker rm demo-container'
                                        }
                                   }
                        }
        stage('Build docker image'){
            steps{
                script{
                    docker.build("serkan23:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                    docker.image("serkan23/app:${env.BUILD_NUMBER}").run("-d -p 8082:8082 ")
                }
            }
        }
    }

}