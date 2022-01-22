
FROM alpine:latest

ENV OS_PACKAGES="curl unzip groff python3 py3-pip git openssh-keygen"

ENV TERRAFORM_VERSION="1.1.2"
ENV TERRAFORM_REPO_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

ENV TERRAGRUNT_VERSION="0.35.20"
ENV TERRAGRUNT_REPO_URL="https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64"

ENV TOOLS_WORKDIR="/tools-workdir"
RUN apk add ${OS_PACKAGES} && \
    curl ${TERRAFORM_REPO_URL} -o terraform-${TERRAFORM_VERSION}.zip && \
    unzip terraform-${TERRAFORM_VERSION}.zip && mv ./terraform /usr/local/bin/ && rm -rf terraform-${TERRAFORM_VERSION}.zip && \
    touch ~/.bashrc && terraform -install-autocomplete && terraform --help && \
    wget ${TERRAGRUNT_REPO_URL} -O ./terragrunt && chmod +x terragrunt && mv ./terragrunt /usr/local/bin/ && \
    pip install awscli && \
    mkdir ${TOOLS_WORKDIR}

WORKDIR ${TOOLS_WORKDIR}