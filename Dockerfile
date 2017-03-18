FROM ruby:alpine

MAINTAINER HomeSOC Tokyo <github@homesoc.tokyo>

RUN \
       apk add --no-cache --virtual .build-ruby \
            ruby-dev \
            gcc \
            libc-dev \
            make \
            linux-headers
    && gem install travis --no-ri --no-rdoc \
    && apk del .build-ruby

CMD travis -h