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

CREATE DATABASE IF NOT EXISTS communication;
GRANT ALL ON communication.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS datahub;
GRANT ALL ON datahub.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS geomatic;
GRANT ALL ON geomatic.* TO 'obviux'@'%';

# needed?
CREATE DATABASE IF NOT EXISTS sap_export;
GRANT ALL ON sap_export.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS sap_export_P01_EXTR201806230001_XEMOL_NEMO;
GRANT ALL ON sap_export_P01_EXTR201806230001_XEMOL_NEMO.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS debtorhub;
GRANT ALL ON geomatic_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS obviux_test;
GRANT ALL ON obviux_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS cubs_test;
GRANT ALL ON cubs_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS bankhub_test;
GRANT ALL ON bankhub_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS gas_test;
GRANT ALL ON gas_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS heating_service_test;
GRANT ALL ON heating_service_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS communication_test;
GRANT ALL ON communication_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS datahub_test;
GRANT ALL ON datahub_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS geomatic_test;
GRANT ALL ON geomatic_test.* TO 'obviux'@'%';

# needed?
CREATE DATABASE IF NOT EXISTS sap_export_test;
GRANT ALL ON sap_export_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS sap_export_P01_EXTR201806230001_XEMOL_NEMO_test;
GRANT ALL ON sap_export_P01_EXTR201806230001_XEMOL_NEMO_test.* TO 'obviux'@'%';

CREATE DATABASE IF NOT EXISTS debtorhub_test;
GRANT ALL ON geomatic_test.* TO 'obviux'@'%';

FLUSH PRIVILEGES ;
