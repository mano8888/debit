FROM nginx
RUN apt-get install -y nginx
run apt-get install -y git
COPY index.html /var/www/html
ENTRYPOINT service nginxstartup.sh && bash
