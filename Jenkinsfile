@Library('mylib')_

pipeline{

    agent any

    environment {
    DOCKERHUB_CREDENTIALS = credentials('docker_cred')
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

        stage('dockerbuild'){

            steps{

                script{
                    Dockerbuild()
                }
            }
        }

        stage('dockerlogin'){

            steps{

                script{
                    Dockerlogin()
                }
            }
        }

        stage('dockerpush'){

            steps{

                script{
                    Dockerpush()
                }
            }
        }

    }
}
