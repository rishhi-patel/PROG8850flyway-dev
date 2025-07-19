-- Create database and user with limited permissions
CREATE DATABASE IF NOT EXISTS subscribersdb;

CREATE USER IF NOT EXISTS 'flywayuser'@'%' IDENTIFIED BY 'flywaypass';
GRANT ALL PRIVILEGES ON subscribersdb.* TO 'flywayuser'@'%';
FLUSH PRIVILEGES;

-- Create initial subscribers table
USE subscribersdb;
CREATE TABLE IF NOT EXISTS subscribers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    subscribed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
