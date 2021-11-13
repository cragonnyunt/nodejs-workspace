FROM cragonnyunt/development-docker:latest

RUN apt-get update && \
    apt-get install -y build-essential

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

VOLUME ["/home/devuser/.npm"]
