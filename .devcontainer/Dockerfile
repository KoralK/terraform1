FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Terraform
RUN apt-get update && apt-get install -y gnupg software-properties-common
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt-get update && apt-get install -y terraform

# Optional: Install cloud CLIs
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash  # For Azure
RUN apt-get install -y awscli  # For AWS

