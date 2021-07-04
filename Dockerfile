FROM cragonnyunt/development-docker:latest

RUN apt-get install -y build-essential

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

USER devuser

RUN mkdir ~/.npm-global && \
    npm config set prefix '~/.npm-global' && \
    echo "export PATH=~/.npm-global/bin:\$PATH" >> ~/.profile

USER root

VOLUME ["/home/devuser/.npm-global"]
