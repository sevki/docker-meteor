FROM ubuntu

# clean and update for a fresh install
RUN apt-get clean && apt-get update

# build essentials
RUN apt-get install -y build-essential g++ git curl

# cairo + image libs
RUN apt-get install -y libc-dev libcairo2-dev libpng-dev libglib2.0-dev libjpeg8-dev libjpeg-turbo8-dev libpango1.0-dev libglib2.0-dev libfreetype6-dev libxft-dev libfontconfig1-dev libgif-dev

# latest Node binaries
RUN apt-get install -y software-properties-common
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs

# graphicsmagick + imagemagick
RUN apt-get install -y graphicsmagick imagemagick

# Install meteor
RUN curl https://install.meteor.com/ | sh
RUN mkdir -p /src

RUN npm install -g geoip-lite@1.1.3

ENTRYPOINT []
