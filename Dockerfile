FROM cragonnyunt/development-docker:latest

RUN apt-get update && \
    apt-get install -y build-essential

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
    apt-get install -y nodejs

USER devuser

RUN mkdir ~/.npm-global && \
    npm config set prefix '~/.npm-global' && \
    echo "export PATH=\$PATH:\$HOME/.npm-global/bin" >> ~/.zshrc

USER root

VOLUME ["/home/devuser/.npm-global"]
