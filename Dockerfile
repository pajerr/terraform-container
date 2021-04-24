FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl zip && \
    curl -L https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip -o terraform.zip && \
    unzip terraform.zip && \
    mv terraform /usr/local/bin/terraform && \
    rm terraform.zip && \
    curl -L https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm awscliv2.zip && \
    rm -rf aws

ENTRYPOINT ["/usr/bin/bash"]