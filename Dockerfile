FROM ruby:alpine

RUN \
       gem install travis --no-ri --no-rdoc

CMD travis -h