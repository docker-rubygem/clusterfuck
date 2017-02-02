FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.3

RUN gem install clusterfuck --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["clusterfuck"]
CMD ["--help"]
