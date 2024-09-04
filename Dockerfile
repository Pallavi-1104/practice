FROM ubuntu:latest
LABEL pallavi="todo"
RUN apt update
RUN apt install nginx -y
RUN rm -rf /var/www/html/index.html
WORKDIR /var/www/html/
copy ..
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]