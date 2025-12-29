FROM jenkins/inbound-agent:jdk17

USER root

# Docker CLI
RUN apt-get update && \
    apt-get install -y ca-certificates curl && \
    curl -fsSL https://get.docker.com | sh && \
    docker --version && \
    rm -rf /var/lib/apt/lists/*

# Повертаємось до jenkins
USER jenkins
