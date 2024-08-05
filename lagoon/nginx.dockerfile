ARG CLI_IMAGE=drupal-base-cli
FROM ${CLI_IMAGE} AS cli

FROM uselagoon/nginx-drupal:latest

COPY --from=cli /app /app

# Define where the Drupal Root is located
ENV WEBROOT=web
