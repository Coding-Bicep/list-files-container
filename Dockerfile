# # Container image that runs your code
# FROM alpine:latest

# # installes required packages for our script
# # RUN	apk add --no-cache \
# #   bash \
# #   curl \
# #   jq

# RUN apk add py3-pip
# RUN apk add bash curl jq gcc musl-dev python3-dev libffi-dev openssl-dev cargo make icu
# RUN pip install --upgrade pip
# RUN pip install azure-cli

# # Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# # change permission to execute the script and
# RUN chmod +x /entrypoint.sh

# # Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]


# Container image that runs your code
FROM mcr.microsoft.com/azure-cli

# installes required packages for our script
# RUN	apk add --no-cache \
#   bash \
#   curl \
#   jq

# RUN apk add py3-pip
# RUN apk add bash curl jq gcc musl-dev python3-dev libffi-dev openssl-dev cargo make icu
# RUN pip install --upgrade pip
# RUN pip install azure-cli

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]