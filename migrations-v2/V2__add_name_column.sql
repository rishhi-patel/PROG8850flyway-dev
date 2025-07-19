USE subscribersdb;

ALTER TABLE subscribers
ADD COLUMN name VARCHAR(100) AFTER email;
