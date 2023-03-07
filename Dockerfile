# Base image
FROM alpine:latest

# Dockerfile informations
LABEL Cyber-Crackito="Mathis BINET; Loris LIZÉ; Quentin CERF"

# Middleware
RUN apk update
RUN apk add apache2 apache2-utils

# WebApps files
ADD ./webtools/ /var/www/localhost/htdocs

# Expose service
EXPOSE 80

# Start service
CMD ["httpd", "-D", "FOREGROUND"]
