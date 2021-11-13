FROM cragonnyunt/development-docker:latest

ARG USER=devuser

RUN apt-get update && \
    apt-get install -y build-essential

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

RUN mkdir /home/devuser/.npm && \
    chown -R $USER:$USER /home/devuser/.npm

VOLUME ["/home/devuser/.npm"]
