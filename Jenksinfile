pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/serkan-can-eyvaz/Vize_YMG2'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("demo_deneme:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("demo_deneme:${env.BUILD_NUMBER}").run("-d -p 8989:8080 --name demo-container")
                }
            }
        }
    }

}