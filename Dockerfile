FROM ubuntu:latest
LABEL pallavi="todo" 
RUN apt update
RUN apt install nginx unzip -y
RUN rm -rf /var/www/html/index.html 
WORKDIR /var/www/html/
#ADD todo.zip .
COPY todo.zip .
RUN unzip todo.zip
RUN mv todo-html/* .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]