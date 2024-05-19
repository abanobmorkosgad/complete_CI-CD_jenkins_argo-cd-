FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    docker.io \
    openjdk-11-jdk \
    maven \
    && rm -rf /var/lib/apt/lists/*

# Install Docker client
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

# Set up the working directory
WORKDIR /workspace