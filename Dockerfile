FROM patricp/ruby
MAINTAINER patric.pereirafranca@gmail.com

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		postgresql-client \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /user/src/app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000
# CMD ["rails", "server", "-b", "0.0.0.0"]