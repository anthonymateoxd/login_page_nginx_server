
pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat '''
                    docker build -t login_page_nginx_server .
                '''
            }
        }

        stage('Run Container') {
            steps {
                echo 'Running container on port 8081...'
                bat '''
                    for /f "tokens=*" %%i in ('docker ps -q --filter "ancestor=login_page_nginx_server"') do docker stop %%i
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
