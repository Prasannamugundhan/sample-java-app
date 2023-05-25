@Library('mylib')_

pipeline{

    agent any

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

    }
}
