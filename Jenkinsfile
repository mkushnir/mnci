
pipeline {
    agent none
    stages {
        stage('p0') {
            steps {
                parallel (
                    'archlinux': {
                        node('archlinux') {
                            build job: 'test-platform', parameters: [[$class: 'LabelParameterValue', name: 'mylabel', label: 'archlinux']]
                        }
                    },
                    'centos': {
                        node('centos') {
                            build job: 'test-platform', parameters: [[$class: 'LabelParameterValue', name: 'mylabel', label: 'centos']]
                        }
                    },
                    'freebsd': {
                        node('freebsd') {
                            build job: 'test-platform', parameters: [[$class: 'LabelParameterValue', name: 'mylabel', label: 'freebsd']]
                        }
                    }
                )
            }
        }
    }
}
