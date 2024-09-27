/* SQL installation script:
   Name:                    Data Created:
                            Data Modfied:
    Purpose:
    */
    -- Opening print statment
    SELECT '' AS 'Installation Starting!!!';
       Remove the database if it is already done
    DROP DATABASE IF EXISTS tostdb_20240917

    */ Create the database after checking making sure it is
        not already there
    */

    -- The following line is pure Standard SQL
    CREATE DATABASE IF NOT EXISTS testdb_20240917
    -- The following line is unique to MYSQL it is optional
       if left out the MYSQL database will take the default settings
    -- of the database.
    -- EXPLAIN CHARACTER SET:
       EXPLAIN COLLATE:
    CHARACTER SET ut8mb4 COLLATE utf8mb4_0900_ai_ci;

    -- Let's see if the database is created
    SHOW DATABASE;
    SELECT '' AS '###############################';

    -- Let's enter the database
    USE testdb_20240917

    -- Let's create some tables

       closing print statment
    SELECT '' AS 'Installation Completed, check for errors!!!';


    CREATE TABLE orders(
    order_id         INT     AUTO_INCREAMENT,
    order_date       DATE,
    order_info_id    INT,
    order_value      INT,
    order_currency   VARCHAR(10),

PRIMARY KEY(order_id)
FOREIGN KEY(order_info_id) REFERENCES order_info(order_info_id)
);