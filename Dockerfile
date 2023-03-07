FROM alpine:latest

LABEL Cyber-Crackito="Mathis BINET; Loris LIZÉ; Quentin CERF"

RUN apk update
RUN apk add apache2 apache2-utils

ADD ./webtools/ /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
