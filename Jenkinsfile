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
			export HOME=$WORKSPACE/stage
			mkdir -p $HOME
			PATH=$HOME/bin:$PATH

			export BUILDROOT=$WORKSPACE/qwe
			mkdir -p $BUILDROOT

			echo ./setup-env init

			echo make ${module}-${setupenv}
                        '''
                    }
                }
                /*
                stage('centos') {
                    agent {label 'centos'}
                    steps {
                        git credentialsId: 'jenkins', url: 'mkushnir@big-1:development/mnci'

                        sh '''
			export HOME=$WORKSPACE/stage
			mkdir -p $HOME
			PATH=$HOME/bin:$PATH

			export BUILDROOT=$WORKSPACE/qwe
			mkdir -p $BUILDROOT

			echo ./setup-env init

			echo make ${module}-${setupenv}
                        '''
                    }
                }
                */
                stage('freebsd') {
                    agent {label 'freebsd'}
                    steps {
                        git credentialsId: 'big-jenkins', url: 'mkushnir@big-1:development/mnci'

                        sh '''
			export HOME=$WORKSPACE/stage
			mkdir -p $HOME
			PATH=$HOME/bin:$PATH

			export BUILDROOT=$WORKSPACE/qwe
			mkdir -p $BUILDROOT

			echo ./setup-env init

			echo make ${module}-${setupenv}
                        '''
                    }
                }
            }
        }
    }
}
