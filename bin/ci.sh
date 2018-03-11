#!/bin/bash -e

docker-compose build --pull
docker-compose -f docker-compose.yml run \
  -e "RAILS_ENV=test" \
  -w "/app" \
  app bundle exec rake spec
