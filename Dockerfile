# Stage 0: Get the docker binary (docker:29.1.3-cli 2025-12-18)
FROM docker:29.1.3-cli AS docker_cli

# Stage 1: Jenkins inbound agent
FROM jenkins/inbound-agent:jdk17
USER root

# Copy the docker CLI binary from the first stage into our agent image
COPY --from=docker_cli /usr/local/bin/docker /usr/local/bin/docker


# Повертаємось до jenkins
USER jenkins
