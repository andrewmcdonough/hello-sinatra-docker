FROM ruby:2.7.1

RUN apt-get update -qq
ENV APP_PATH /app

WORKDIR $APP_PATH/
ADD Gemfile* $APP_PATH/
RUN bundle install

ADD . $APP_PATH

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "-p", "4567", "--host", "0.0.0.0"]
