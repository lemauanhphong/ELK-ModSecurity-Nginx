FROM owasp/modsecurity-crs:nginx-alpine
USER root
RUN rm /var/log/nginx/*
RUN touch /var/log/access.log /var/log/error.log
