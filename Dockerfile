FROM mariadb
ENV MYSQL_DATABASE install_vcloudstack
ENV MYSQL_ROOT_PASSWORD mrnim123
COPY ./install_vcloudstack.sql /docker-entrypoint-initdb.d/install_vcloudstack.sql
VOLUME /var/lib/mysql
VOLUME /etc/mysql/conf.d
EXPOSE 3306