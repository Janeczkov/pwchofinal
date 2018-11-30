FROM ubuntu
EXPOSE 80
RUN apt-get install -y apache2 && apt-get clean
VOLUME ["/var/www", "var/log/apache2", "/etc/apache2"]
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
CMD ["/bin/bash"]
