
FROM alpine:latest

ENV OS_PACKAGES="curl unzip groff python3 py3-pip"
ENV TERRAFORM_VERSION="1.1.2"
ENV TERRAFORM_REPO_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

ENV TERRAFORM_WORKDIR="/terraform_workdir"
RUN apk add ${OS_PACKAGES} && \
    curl "${TERRAFORM_REPO_URL}" -o "terraform-${TERRAFORM_VERSION}.zip" && \
    unzip terraform-${TERRAFORM_VERSION}.zip && mv ./terraform /usr/local/bin/ && rm -rf terraform-${TERRAFORM_VERSION}.zip && \
    touch ~/.bashrc && terraform -install-autocomplete && terraform --help && \
    pip install awscli && \
    mkdir ${TERRAFORM_WORKDIR}

WORKDIR ${TERRAFORM_WORKDIR}