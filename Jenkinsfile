pipeline{

    agent any

    stages{

        stage('GitCheckout'){

            steps{

                script{

                    git branch: 'main', url: 'https://github.com/buildpacks/sample-java-app.git'
                }
            }
        }



    }
}