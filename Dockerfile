FROM fedora:30

RUN dnf -y update

RUN dnf -y install \
  pandoc \
  wget \
  git \
  nodejs

WORKDIR /hugo
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.65.3/hugo_extended_0.65.3_Linux-64bit.tar.gz && \
  tar -xvf hugo_extended_0.65.3_Linux-64bit.tar.gz && \
  install hugo /usr/bin

WORKDIR /website
# npm install -D --save autoprefixer
# npm install -D --save postcss-cli

EXPOSE 1313