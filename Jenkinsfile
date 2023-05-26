@Library('mylib')_

pipeline{

    agent any

    environment {
    DOCKERHUB_CREDENTIALS = credentials('Jenkins')
  }

    stages{

        stage('GitCheckout'){

            steps{

                script{
                    Gitcheckout(
                    

                     branch: 'main', url: 'https://github.com/buildpacks/sample-java-app.git'
                    )
                }
            }
        }

        stage('mvntest'){

            steps{

                script{
                    Mvntest()
                }
            }
        }

        stage('mvnbuild'){

            steps{

                script{
                    Mvnbuild()
                }
            }
        }

       
  
  
    stage('Build') {
      steps {
        sh 'docker build -t dockerrr007/jenkins-docker-hub .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push dockerrr007/jenkins-docker-hub'
      }
    }
  
  post {
    always {
      sh 'docker logout'
    }
  }
}
}