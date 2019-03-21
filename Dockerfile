FROM ruby:2.6.0

RUN apt-get update -qq && apt-get install -y \
    build-essential nodejs sqlite3 libsqlite3-dev vim \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

RUN rails new verifier_rce \
    && cd verifier_rce \
    && sed -i "s/'sqlite3'/'sqlite3', '~> 1.3.6'/g" Gemfile \
    && sed -i "s/~> 5.2.2/= 5.2.2/g" Gemfile \
    && rm Gemfile.lock \
    && bundle install

WORKDIR /verifier_rce

CMD ["bundle", "exec", "bin/rails", "server", "-b", "0.0.0.0"]
