DROP DATABASE IF EXISTS kitchen_pantry;

CREATE DATABASE IF NOT EXISTS `kitchen_pantry` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;

CREATE USER IF NOT EXISTS 'spices_manager'@'localhost';
GRANT ALL PRIVILEGES ON kitchen_pantry.* TO 'spices_manager'@'localhost';

USE kitchen_pantry;

SOURCE create-user-defined-variables.sql;

SOURCE create-spices-table.sql;
SOURCE populate-spices-table.sql;

SOURCE create-Store_address-table.sql;
SOURCE populate-Store_address-table.sql;

SOURCE create-purchasedspices-table.sql;
SOURCE populate-purchasedspices-table.sql;

SOURCE create-Stores-table.sql;
SOURCE populate-Stores-table.sql;
