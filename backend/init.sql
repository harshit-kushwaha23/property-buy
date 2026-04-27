CREATE DATABASE IF NOT EXISTS estateflow;

USE estateflow;

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
email VARCHAR(100)
);

CREATE TABLE properties(
id INT PRIMARY KEY,
name VARCHAR(100),
price BIGINT,
city VARCHAR(100),
category VARCHAR(50),
beds INT,
baths INT,
area INT,
image VARCHAR(255)
);

CREATE TABLE bookmarks(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
property_id INT
);

CREATE TABLE contacts(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
property_id INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE purchases(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
property_id INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO users(name,email)
VALUES
('Alex Morgan','alex@test.com');


INSERT INTO properties VALUES
(1,'Ocean View Penthouse',38000000,'Mumbai','Penthouse',4,4,3200,'images/house1.jpg'),
(2,'Luxury Urban Flat',12000000,'Pune','Flat',3,2,1650,'images/house4.jpg'),
(3,'Palm Grove Villa',25000000,'Goa','Villa',5,4,4000,'images/house7.jpg'),
(4,'Skyline Penthouse',34000000,'Delhi','Penthouse',4,4,3000,'images/house10.jpg'),
(5,'Lakeview Villa',29000000,'Bangalore','Villa',5,5,4500,'images/house12.jpg'),
(6,'Minimal Smart Flat',9500000,'Hyderabad','Flat',2,2,1300,'images/house14.jpg'),
(7,'Elite Townhouse',17000000,'Ahmedabad','Townhouse',3,3,2100,'images/house16.jpg'),
(8,'Garden Flat',8500000,'Chennai','Flat',2,2,1200,'images/house18.jpg'),
(9,'Royal Villa',31000000,'Jaipur','Villa',6,5,5000,'images/house20.jpg'),
(10,'Luxury Flat Central',14000000,'Mumbai','Flat',3,2,1700,'images/house22.jpg'),
(11,'Riverfront Villa',26000000,'Surat','Villa',4,4,3800,'images/house24.jpg'),
(12,'Modern Townhouse',15500000,'Indore','Townhouse',3,3,2200,'images/house26.jpg'),
(13,'Elite Penthouse',36000000,'Mumbai','Penthouse',5,5,3400,'images/house28.jpg'),
(14,'Budget Smart Flat',7500000,'Nagpur','Flat',2,2,1100,'images/house30.jpg'),
(15,'Premium Family Villa',23000000,'Pune','Villa',4,4,3700,'images/house32.jpg');