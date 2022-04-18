pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    ./git/jenkins/build/mvn.sh mvn -B -DkskipTests clean package
                    ./git/jenkins/build/build.sh
                
                    '''
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/test.sh mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh '
            }
        }
    }
}
