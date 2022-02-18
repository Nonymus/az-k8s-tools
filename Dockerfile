FROM mcr.microsoft.com/azure-cli:2.33.1
RUN az aks install-cli
ARG HELM_VERSION=3.7.0
RUN curl -L https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/local/bin/ && \
    rm -rf linux-amd64 /tmp/helm.tar.gz
