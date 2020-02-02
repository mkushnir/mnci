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
                        checkout([
                            $class: 'GitSCM',
                            branches: scm.branches,
                            doGenerateSubmoduleConfigurations: scm.doGenerateSubmoduleConfigurations,
                            extensions: scm.extensions + [[$class: 'WipeWorkspace']],
                            userRemoteConfigs: [[credentialsId: 'big-jenkins', url: 'mkushnir@big-1:development/mnci']]
                        ])
                        sshagent(credentials: ['big-jenkins']) {
                            sh './mndev-platform.sh'
                        }


                    }
                }
                /*
                stage('centos') {
                    agent {label 'centos'}
                    steps {
                        git credentialsId: 'big-jenkins', url: 'mkushnir@big-1:development/mnci'

                        sshagent(credentials: ['big-jenkins']) {
                            sh './mndev-platform.sh'
                        }
                    }
                }
                */
                stage('freebsd') {
                    agent {label 'freebsd'}
                    steps {
                        checkout([
                            $class: 'GitSCM',
                            branches: scm.branches,
                            doGenerateSubmoduleConfigurations: scm.doGenerateSubmoduleConfigurations,
                            extensions: scm.extensions + [[$class: 'WipeWorkspace']],
                            userRemoteConfigs: [[credentialsId: 'big-jenkins', url: 'mkushnir@big-1:development/mnci']]
                        ])
                        sshagent(credentials: ['big-jenkins']) {
                            sh './mndev-platform.sh'
                        }
                    }
                }
            }
        }
    }
}
