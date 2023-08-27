pipeline {
    agent any
    tools {
        // Specify the name of the Git installation configured in Jenkins
        git 'MyGitInstallation'
   
        // Specify the name of the Node.js installation
        nodejs 'NodeJS 14.20.1'
    }

    stages {
        stage('Source') {
            steps {
                // Get the source code from the git repo
                checkout scm
                // Run npm install for the node modules
                sh "npm install"
                sh "npm audit fix --force"
                echo 'Source Stage Finished'
            }
        }

        stage('Update Angular CLI and Build') {
            steps {
                script {
                    // Display npm and Node.js versions for debugging
                    sh "npm --version"
                    sh "node --version"
                    
                    // Update Angular CLI
                    sh "npm install -g @angular/cli@14.0.1"
                    
                    // Print the contents of the ng binary directory for debugging
                    sh "ls ${env.WORKSPACE}/node_modules/@angular/cli/bin"
                    
                    // Use npm run to execute the local Angular CLI
                    sh "npm run ng build"
                }
                echo 'Build Stage Finished'
            }
        }
    }
}