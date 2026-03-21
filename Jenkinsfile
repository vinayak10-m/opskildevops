pipeline {
    agent any
    environment {
        IMAGE_NAME = 'my-app-image'
        CONTAINER_NAME = 'my-app-container'
        REPO_URL = 'https://github.com/vinayak10-m/opskildevops.git' // Change this to your repo
        DOCKER_REGISTRY = 'https://hub.docker.com/repositories/vina10ayak' // Change this to your Docker Hub repo
    }
    stages {
        stage('Checkout') {
            steps {
                git url: env.REPO_URL
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }
        stage('Docker Run') {
            steps {
                script {
                    sh 'docker rm -f $CONTAINER_NAME || true'
                    sh 'docker run -d --name $CONTAINER_NAME -p 8000:8000 $IMAGE_NAME'
                }
            }
        }
        stage('Docker Push') {
            steps {
                script {
                    sh 'docker tag $IMAGE_NAME $DOCKER_REGISTRY'
                    sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
                    sh 'docker push $DOCKER_REGISTRY'
                }
            }
        }
    }
    environment {
        DOCKERHUB_USERNAME = credentials('dockerhub-username')
        DOCKERHUB_PASSWORD = credentials('dockerhub-password')
    }

    post {
        always {
            echo 'Pipeline finished.'
            // Add cleanup or always-run steps here
        }
        success {
            echo 'Pipeline succeeded!'
            // Add success notifications or actions here
        }
        failure {
            echo 'Pipeline failed.'
            mail to: 'vinayakmundasad@gmail.com',
                 subject: "Jenkins Pipeline Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                 body: "The Jenkins pipeline has failed.\n\nJob: ${env.JOB_NAME}\nBuild: ${env.BUILD_NUMBER}\nCheck Jenkins for details."
        }
    }
}
