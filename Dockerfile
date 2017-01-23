FROM ruby

#ARG DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && \
#    apt-get install -y software-properties-common wget && \
#    add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" && \
#    wget https://cli-assets.heroku.com/apt/release.key -O - | apt-key add - && \
#    apt-get update && \
#    apt-get install -y heroku && \
#    rm -rf /var/lib/apt/lists/*

RUN wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
    mkdir -p /usr/local/lib /usr/local/bin && \
    tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib && \
    ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku && \
    rm -fr heroku-linux-amd64.tar.gz
