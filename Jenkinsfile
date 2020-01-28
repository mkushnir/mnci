pipeline {
    agent none
    stages {
        stage('p0') {
            parallel {
                stage('archlinux') {
                    agent {label 'archlinux'}
                    steps {
                        build job: 'mndev-platform',
                        parameters: [
                            [$class: 'LabelParameterValue', name: 'mylabel', label: 'archlinux'], string('name': 'setupenv', 'value': params.setupenv), string('name': 'module', 'value': params.module)
                        ]
                    }
                }
                /*
                stage('centos') {
                    agent {label 'centos'}
                    steps {
                        build job: 'mndev-platform',
                        parameters: [
                            [$class: 'LabelParameterValue', name: 'mylabel', label: 'centos'], string('name': 'setupenv', 'value': params.setupenv), string('name': 'module', 'value': params.module)
                        ]
                    }
                }
                */
                stage('freebsd') {
                    agent {label 'freebsd'}
                    steps {
                        build job: 'mndev-platform',
                        parameters: [
                            [$class: 'LabelParameterValue', name: 'mylabel', label: 'freebsd'], string('name': 'setupenv', 'value': params.setupenv), string('name': 'module', 'value': params.module)
                        ]
                    }
                }
            }
        }
    }
}
