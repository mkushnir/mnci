pipeline {
    agent none
    stages {
        stage('p0') {
            steps {
                parallel (
                    'archlinux': {
                        node('archlinux') {
                            build job: 'test-platform',
                            parameters: [
                                [$class: 'LabelParameterValue', name: 'mylabel', label: 'archlinux'], string('name': 'setupenv', 'value': params.setupenv)
                            ]
                        }
                    },
                    'centos': {
                        node('centos') {
                            build job: 'test-platform',
                            parameters: [
                                [$class: 'LabelParameterValue', name: 'mylabel', label: 'centos'], string('name': 'setupenv', 'value': params.setupenv)
                            ]
                        }
                    },
                    'freebsd': {
                        node('freebsd') {
                            build job: 'test-platform',
                            parameters: [
                                [$class: 'LabelParameterValue', name: 'mylabel', label: 'freebsd'], string('name': 'setupenv', 'value': params.setupenv)
                            ]
                        }
                    }
                )       
            }       
        }       
    }       
}       
