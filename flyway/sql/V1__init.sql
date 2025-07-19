-- ✅ DO NOT create user here — already exists via GitHub Actions service

-- Create initial subscribers table
CREATE DATABASE IF NOT EXISTS subscribersdb;

USE subscribersdb;

CREATE TABLE IF NOT EXISTS subscribers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    subscribed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
