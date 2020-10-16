FROM ruby:2.6-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/humarci/jekyll-action"
LABEL homepage="https://github.com/humarci/jekyll-action"
LABEL maintainer="Marton Huszics <huszicsmarton@gmail.com>"

RUN apk add --no-cache git build-base

COPY LICENSE README.md /

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
