FROM ruby:2.3.1

RUN gem install bundler -v '2.0.1' && gem list

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

ENV BUNDLER_VERSION='2.0.2'
RUN gem install bundler --no-document -v '2.0.2'

ADD . $APP_HOME

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
