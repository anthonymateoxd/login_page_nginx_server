pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh '''
                    docker build -t login_page_nginx_server .
                '''
            }
        }

        stage('Run Container') {
            steps {
                echo 'Running container on port 8081...'
                sh '''
                    docker ps -q --filter "ancestor=login_page_nginx_server" | xargs -r docker stop
                    docker run -d -p 8081:80 login_page_nginx_server
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Build completed successfully!'
        }
        failure {
            echo '❌ Build failed!'
        }
    }
}
