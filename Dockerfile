FROM ubuntu:latest

MAINTAINER Andrey Popov andrey@popov.by

RUN apt-get update && \
    apt-get install openssl sudo curl -y && \
    curl --output ps.sh https://raw.githubusercontent.com/PowerShell/PowerShell/v6.0.0-alpha.10/tools/download.sh && \
    bash ps.sh

CMD ["powershell"]
