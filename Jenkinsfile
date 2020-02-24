pipeline {
   agent any

   stages {
      stage('pull code') {
         steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '0502881e-d41d-428f-b0d8-d70a43248bcb', url: 'https://github.com/Mlhtby/Idea_First.git']]])
         }
      }
      stage('code checking') {
         steps {
            script {
                scannerHome = tool 'sonar-scanner'
            }
            withSonarQubeEnv('sonarqube') {
                sh "${scannerHome}/bin/sonar-scanner"
            }
         }
      }
      stage('package code') {
         steps {
            sh label: '', script: 'source /etc/profile && rm -rf target/*.war && mvn clean package'
         }
      }
      stage('public') {
         steps {
            sh label: '', script: 'scp target/*.war 172.16.31.20:/usr/local/tomcat9/webapps/ && scp target/*.war 172.16.31.30:/usr/local/tomcat9/webapps/'
         }
      }

   }
   post {
     always {
    // One or more steps need to be included within each condition's block.
         emailext(
               subject: '构建通知：${PROJECT_NAME} - Build # ${BUILD_NUMBER} - ${BUILD_STATUS}!',
               body: '${FILE,path="email.html"}',
               to: '1584668370@qq.com'
         )
     }
   }
}