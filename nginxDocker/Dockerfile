###########################################################
# Dockerfile to build a NginxDockerRegistry 
# to secure and proxy the Docker Registry 
############################################################

FROM nginx:1.9.2

# File Author / Maintainer
MAINTAINER Ovi Isai <mischovi@yahoo.de>

WORKDIR /usr/src
ADD . /usr/src/
RUN chmod +x run.sh
CMD ./run.sh

