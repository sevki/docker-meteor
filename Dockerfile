FROM ubuntu

# clean and update for a fresh install
RUN apt-get clean && apt-get update

# build essentials
RUN apt-get install -y build-essential g++ git curl wget unzip 

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

## Test tools
#jest
RUN npm install -g jest-cli react react-tools jsxhint
## joker
RUN wget https://github.com/sevki/joker/releases/download/v0.0.2/joker-v0.0.2-linux-x64
RUN chmod +x joker-v0.0.2-linux-x64
RUN mv joker-v0.0.2-linux-x64 /bin/joker
#flow
RUN wget http://flowtype.org/downloads/flow-linux64-latest.zip
RUN unzip flow-linux64-latest.zip -d /tmp/flow
RUN mv /tmp/flow/flow /flow
RUN chmod +x flow
## phantomjs
RUN npm install -g phantomjs
ENTRYPOINT []
