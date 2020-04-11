FROM ruby:2.3.1



ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v '2.0.1'
RUN bundle install

ADD . $APP_HOME

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
