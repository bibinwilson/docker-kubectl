FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install curl -y  && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/bin 

ENTRYPOINT ["tail", "-f", "/dev/null"]


