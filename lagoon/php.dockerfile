ARG CLI_IMAGE=drupal-base-cli
FROM ${CLI_IMAGE} AS cli

FROM uselagoon/php-8.3-fpm:latest

COPY --from=cli /app /app
