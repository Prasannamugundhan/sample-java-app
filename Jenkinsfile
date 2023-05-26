@Library('mylib') _

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
                    

                     branch: 'main', url: 'https://github.com/Prasannamugundhan/sample-java-app.git'
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
          script{
            Dockerbuild()
          }
        }


    stage('Login') {
      steps {
          script{
            Dockerlogin()
          }
      }
    }


    stage('Push') {
      steps {
          scripts{
            Dockerpush()
          }
      }
    }
  

    }
}