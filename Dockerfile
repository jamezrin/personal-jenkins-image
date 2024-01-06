FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get upgrade -y

USER jenkins

RUN jenkins-plugin-cli --plugins \
    kubernetes \
    workflow-aggregator \
    git \
    configuration-as-code \
    blueocean \
    metrics \
    generic-webhook-trigger \
    urltrigger \
    ssh-agent \
    snyk-security-scanner \
    sonar \
    http_request \
    coverage \
    matrix-auth \
    copyartifact \
    sonar \
    performance \
    maven-plugin \
    nodejs