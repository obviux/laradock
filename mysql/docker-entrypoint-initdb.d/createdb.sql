#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and need db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_SAVE_PATH/mysql not found.
#
# if your $DATA_SAVE_PATH/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

#CREATE DATABASE IF NOT EXISTS `dev_db_1` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_1`.* TO 'default'@'%' ;

#CREATE DATABASE IF NOT EXISTS `dev_db_2` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_2`.* TO 'default'@'%' ;

#CREATE DATABASE IF NOT EXISTS `dev_db_3` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_3`.* TO 'default'@'%' ;

GRANT ALL ON *.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS obviux;
GRANT ALL ON obviux.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS cubs;
GRANT ALL ON cubs.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS bankhub;
GRANT ALL ON bankhub.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS gas;
GRANT ALL ON gas.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS heating_service;
GRANT ALL ON heating_service.* TO 'obviux'@'%';

# needed?
CREATE DATABASE IF NOT EXISTS sap_export;
GRANT ALL ON sap_export.* TO 'obviux'@'%';

FLUSH PRIVILEGES ;
