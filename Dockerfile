FROM ruby:alpine

RUN \
       apk add --no-cache --virtual .build-ruby \
            make \
    && gem install travis --no-ri --no-rdoc \
    && apk del .build-ruby

CMD travis -h