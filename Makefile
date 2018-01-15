run:
    docker-compose up -d \
    && docker-compose run web rake db:create \
    && docker-compose run web rake db:seed