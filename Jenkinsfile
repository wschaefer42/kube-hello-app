pipeline {
    agent any
    environment {
        image = "wschaefer42/kube-hello-app"
    }
    stages {
        stage("Publish") {
            def appimage = docker.build registry + ":$BUILD_NUMBER"
            appimage.push()
        }
    }
}