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
        stage("Deploy") {
            steps {
                script {
                    def image_id = image + ":$BUILD_NUMBER"
                    sh "ansible-playbook playbook.yml -e image_id=${image_id}"
                }
            }
        }
    }
}