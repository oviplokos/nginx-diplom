FROM nginx:1.27.0
RUN rm -rf /usr/share/nginx/html/*
COPY static/index.html /usr/share/nginx/html/
EXPOSE 80
