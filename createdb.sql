create database contact;
CREATE USER 'contact'@'localhost' IDENTIFIED BY 'contact';
GRANT ALL PRIVILEGES ON contact.* TO 'contact'@'localhost';
