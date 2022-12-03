# Container image that runs your code
FROM alpine:latest

# installes required packages for our script
RUN	apk add --no-cache \
  bash \
  py-pip \
  curl \
  jq \
  pip install azure-cli

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]