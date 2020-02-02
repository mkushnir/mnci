pipeline {
    agent none
    options {
        parallelsAlwaysFailFast()
    }
    stages {
        stage('p0') {
            parallel {
                stage('archlinux') {
                    agent {label 'archlinux'}
                    steps {
                        git credentialsId: 'big-jenkins', url: 'mkushnir@big-1:development/mnci'

                        sh '''
                        echo $params.setupenv $params.module
                        env
                        '''
                    }
                }
                /*
                stage('centos') {
                    agent {label 'centos'}
                    steps {
                        git credentialsId: 'jenkins', url: 'mkushnir@big-1:development/mnci'

                        sh '''
                        echo $params.setupenv $params.module
                        env
                        '''
                    }
                }
                */
                stage('freebsd') {
                    agent {label 'freebsd'}
                    steps {
                        git credentialsId: 'big-jenkins', url: 'mkushnir@big-1:development/mnci'

                        sh '''
                        echo $params.setupenv $params.module
                        env
                        '''
                    }
                }
            }
        }
    }
}
