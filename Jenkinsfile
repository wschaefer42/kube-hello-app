pipeline {
    agent any
    environment {
        image = "wschaefer42/kube-hello-app"
    }
    stages {
        stage("Publish") {
            steps {
                script {
                    def appimage = docker.build image + ":$BUILD_NUMBER"
                    appimage.push()
                }
            }
        }
    }
}