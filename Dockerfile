FROM ruby:2.5
WORKDIR /usr/src/app/

#Copy the gem files into the WORKDIR
COPY gem_with_database.gemspec .
COPY Gemfile .
COPY lib/gem_with_database/version.rb lib/gem_with_database/

RUN bundle check || bundle install

# Install psql so bin/wait_for_pg.sh will wait for the database to be up and running
# Get the Key
RUN wget --quiet https://www.postgresql.org/media/keys/ACCC4CF8.asc
RUN apt-key add ACCC4CF8.asc
# Add the Source List
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Update and Install
RUN apt-get update && apt-get -y install postgresql-client-9.6

#Copy the project into the WORKDIR
COPY . .
