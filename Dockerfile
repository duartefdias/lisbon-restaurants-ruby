FROM ruby:2.6.6

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

COPY Gemfile /home/app/Gemfile
COPY Gemfile.lock /home/app/Gemfile.lock
RUN bundle install
COPY . /home/app

RUN bundle install
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# ENTRYPOINT [ "/bin/bash" ]
# CMD ["rails", "server", "-b", "0.0.0.0"]
ENTRYPOINT [ "rails", "server", "-b", "0.0.0.0", "-e", "production" ]