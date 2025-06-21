FROM amazonlinux:latest

RUN set -eux; \
# Install fundamental dependencies 
    yum -y update; \
    yum -y install \
        vim \
        python3-pip \
    ; \
# Install libraries of python3
    pip3 install \
        urllib3==1.26.4 \
        pytest==8.3.5 \
    ; 

ENTRYPOINT ["tail", "-f", "/dev/null"]