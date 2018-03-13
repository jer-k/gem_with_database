#!/bin/bash -e

docker-compose build --pull
docker-compose run \
  -e "RAILS_ENV=test" \
  app bundle exec rake spec
