# ROOT PASSWORD
ENV MYSQL_ROOT_PASSWORD=1234

#ENV MYSQL_DATABASE=sampledb
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=1234
ENV MYSQL_DATABASE: codenation_development

ENV MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql

ADD ["db_dump.sql", "/tmp/dump.sql"]

RUN /etc/init.d/mysql start && \
         mysql -u root -p$MYSQL_ROOT_PASSWORD  -e "GRANT ALL PRIVILEGES ON *.* TO 'comeon'@'%' IDENTIFIED BY 'password';FLUSH PRIVILEGES;" && \
        mysql -u root -p${MYSQL_ROOT_PASSWORD}  < /tmp/dump.sql

#PORT
EXPOSE 3306