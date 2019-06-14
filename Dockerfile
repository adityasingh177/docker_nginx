FROM nginx
RUN apt-get -y update && apt-get install bash -y && mkdir -p /var/www
COPY index.html /usr/share/nginx/html/index.html
COPY 500.html /usr/share/nginx/html/500.html
COPY 404.html /usr/share/nginx/html/404.html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 5000