FROM uselagoon/php-8.3-cli-drupal:latest AS cli

COPY composer.* /app/
COPY assets /app/assets
RUN --mount=type=cache,target=/home/.composer/cache composer install --no-dev
COPY . /app
RUN mkdir -p -v -m775 /app/web/sites/default/files

# Define where the Drupal Root is located
ENV WEBROOT=web

FROM uselagoon/nginx-drupal:latest AS nginx

COPY --from=cli /app /app

ENV WEBROOT=web

FROM uselagoon/php-8.3-fpm:latest AS php
 
COPY --from=cli /app /app
