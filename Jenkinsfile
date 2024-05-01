pipeline {
    agent any

    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/serkan-can-eyvaz/Vize_YMG2']]
                )

            }
        }
        stage('Build docker image'){
            steps{
                script{
                    docker.build("deneme12:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                    docker.image("deneme12:${env.BUILD_NUMBER}").run("-d -p 8082:8082 ")

                }
            }
        }
    }
}