pipeline {
    agent any

    environment {
        IMAGE_NAME = "sample-app"
        IMAGE_TAG  = "ci"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                dir('sample-app') {
                    sh '''
                        docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                    '''
                }
            }
        }

        stage('Hadolint Dockerfile') {
            steps {
                dir('sample-app') {
                    sh '''
                        mkdir -p proof/hadolint
                        hadolint Dockerfile | tee proof/hadolint/hadolint.txt
                    '''
                }
            }
        }

        stage('Trivy Image Scan') {
            steps {
                dir('sample-app') {
                    sh '''
                        mkdir -p proof/trivy
                        docker run --rm \
                          -v /var/run/docker.sock:/var/run/docker.sock \
                          aquasec/trivy:latest image \
                          --severity HIGH,CRITICAL \
                          --exit-code 1 \
                          ${IMAGE_NAME}:${IMAGE_TAG} | tee proof/trivy/trivy.txt
                    '''
                }
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'sample-app/proof/**', fingerprint: true
        }

        failure {
            echo 'Pipeline failed due to security violations'
        }

        success {
            echo 'Pipeline passed all security gates'
        }
    }
}
