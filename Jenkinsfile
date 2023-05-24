@Library('mylib') _

pipeline{

    agent any

    stages{

        stage('GitCheckout'){

            steps{

                script{
                    Gitcheckout(
                    

                    git branch: 'main', url: 'https://github.com/buildpacks/sample-java-app.git'
                    )
                }
            }
        }



    }
}
