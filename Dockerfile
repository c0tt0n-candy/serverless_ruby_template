FROM lambci/lambda:build-ruby2.7
USER root
ENV BUNDLER_VERSION 2.1.4

RUN yum update -y && \
    curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && \
    yum install -y nodejs \
    yarn

RUN gem install bundler -v ${BUNDLER_VERSION}
WORKDIR /myapp
ADD . /myapp
