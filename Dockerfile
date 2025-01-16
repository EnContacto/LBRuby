FROM ruby:3.1-alpine

RUN apk add --no-cache build-base

WORKDIR /app

COPY Gemfile Gemfile.lock* ./

RUN bundle install

COPY . .

EXPOSE 4568

CMD ["ruby", "app.rb"]
