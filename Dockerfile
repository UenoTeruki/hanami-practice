FROM ruby:2.7.5
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 2300
