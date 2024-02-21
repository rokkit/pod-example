FROM ruby:3.3.0

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

ENV APP_ENV=production

RUN bundle install

COPY . /app

EXPOSE 4567

CMD ["ruby", "app.rb"]