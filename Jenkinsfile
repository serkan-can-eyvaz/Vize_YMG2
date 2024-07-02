pipeline {
    agent any
    tools {
        maven 'maven 3.5.0'
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

        stage('Build docker image'){
            steps{
                script{
                    docker.build("serkan23/app:${env.BUILD_NUMBER}")
                }
            }
        }



        stage('Run Docker Container') {
                    steps {
                        script {
                            docker.image("serkan23/app:${env.BUILD_NUMBER}").run("-d -p 8082:8065 --name demo-container")
                        }
                    }
                }

    }

}