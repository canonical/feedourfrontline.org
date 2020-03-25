FROM ubuntu:bionic

RUN apt-get update && apt-get install --yes nginx

# Copy over files
WORKDIR /srv
ADD srv .
ADD nginx.conf /etc/nginx/sites-enabled/default

ARG BUILD_ID
RUN sed -i "s/~BUILD_ID~/${BUILD_ID}/" /etc/nginx/sites-enabled/default

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

