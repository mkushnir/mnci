pipeline {
    agent none
    stages {
        stage('p0') {
            parallel {
                stage('archlinux') {
                    agent {label 'archlinux'}
                    options {
                        timeout(time: 7, unit: 'MINUTES')
                    }
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
                    options {
                        timeout(time: 4, unit: 'MINUTES')
                    }
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
                    options {
                        timeout(time: 7, unit: 'MINUTES')
                    }
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
