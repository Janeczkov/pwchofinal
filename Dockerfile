FROM ubuntu
EXPOSE 80
RUN apt-get install -y apache2
#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
CMD ["/usr/sbin/apache2ctl"]
