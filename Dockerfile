FROM nginx:1.21.3

COPY build/index.html /usr/share/nginx/html
