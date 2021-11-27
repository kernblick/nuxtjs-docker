ARG NODE_ENV="latest"

# https://github.com/kernblick/nodejs-docker
FROM kernblick/nodejs:$NODE_ENV

LABEL maintainer="Markus Luckey <luckey@kernblick.de>"
LABEL url="https://github.com/kernblick/nuxtjs-docker.git"

RUN yarn global add nuxt

# Variables of nuxt configure
ENV HOST 0.0.0.0
ENV NUXT_PORT 3000 

EXPOSE $NUXT_PORT

# Copying scripts and setting entrypoint
COPY ./tools /opt/tools
RUN sudo chmod -R +x /opt/tools/
ENTRYPOINT ["/bin/sh", "/opt/tools/entrypoint-nuxtjs.sh"]