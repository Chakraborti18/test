FROM ubuntu:latest
ENV TZ=Asia/Krasnoyarsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y update
RUN apt-get -y install apache2
ENV DEVOPS=SerBor
CMD ["/bin/sh","-c","echo DEVOPS=${DEVOPS}> /var/www/html/index.html; /usr/sbin/apache2ctl -DFOREGROUND"]
EXPOSE 80
