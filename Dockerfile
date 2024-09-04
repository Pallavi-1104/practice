FROM ubuntu:latest
LABEL pallavi="todo" 
RUN apt update
RUN apt install nginx unzip -y
RUN rm -rf /var/www/html/index.html 
COPY ./todo.zip /var/www/html/
WORKDIR /var/www/html/
#ADD todo.zip .
RUN unzip todo.zip
RUN rm todo.zip
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]