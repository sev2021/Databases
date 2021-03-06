CREATE DATABASE IF NOT EXISTS lab4;
USE lab4;


DROP TABLE IF EXISTS branch;

CREATE TABLE Users 
(userId char(5) PRIMARY KEY,
Username varchar(11),
Password varchar(22),
DOB date);

INSERT INTO users VALUES ("C001", "Jack10" , "IF_HO3AsifhwNFWl", "2001-01-01");
INSERT INTO users VALUES ("C002", "Ben234" , "gr62rhmmgg343_4h", "2002-02-02");
INSERT INTO users VALUES ("C003", "PeterS" , "343jAsifhh3_f34f", "2001-03-03");
INSERT INTO users VALUES ("C004", "Janet4" , "DDR_gwhsifhwNFWl", "2002-04-04");
INSERT INTO users VALUES ("C005", "SeanCC" , "gwgwg3AsirhergIN", "2004-05-05");



DROP TABLE IF EXISTS brands;

CREATE TABLE brands 
(brandId char(5), 
brandName varchar(11) PRIMARY KEY);

INSERT INTO brands VALUES ("B001", "Corsair");
INSERT INTO brands VALUES ("B002", "Crucial");
INSERT INTO brands VALUES ("B003", "GSkill");
INSERT INTO brands VALUES ("B004", "Kingston");
INSERT INTO brands VALUES ("B005", "Hynix");



DROP TABLE IF EXISTS webfiles;

CREATE TABLE webfiles 
(fileId char(5), 
fileURL varchar(99) PRIMARY KEY);

INSERT INTO webfiles VALUES ("f001", "/8GB_Hynix_f001.jpg");
INSERT INTO webfiles VALUES ("f002", "/16GB_Corsair_f002.jpg");
INSERT INTO webfiles VALUES ("f003", "/16GB_Crucial_f003.jpg");
INSERT INTO webfiles VALUES ("f004", "/8GB_GSkill_f004.jpg");
INSERT INTO webfiles VALUES ("f005", "/16GB_Hynix_f005.jpg");



DROP TABLE IF EXISTS items;

CREATE TABLE items(
itemNo char(5) PRIMARY KEY, 
Price decimal(10,2), 
imageURL varchar(22), 
Description varchar(22), 
Brand varchar(11)
);

ALTER TABLE items ADD FOREIGN KEY (imageURL) REFERENCES webfiles(fileURL);
ALTER TABLE items ADD FOREIGN KEY (Brand) REFERENCES brands(brandName);

INSERT INTO items VALUES ("i001", 65, "/16GB_Corsair_f002.jpg", "DDR4 16GB Memory", "Corsair");
INSERT INTO items VALUES ("i002", 70, "/16GB_Crucial_f003.jpg", "DDR4 16GB Memory", "Crucial");
INSERT INTO items VALUES ("i003", 55, "/16GB_Hynix_f005.jpg", "DDR4 2*8GB Memory", "Hynix");
INSERT INTO items VALUES ("i004", 35, "/8GB_GSkill_f004.jpg", "DDR4 8GB Memory", "GSkill");
INSERT INTO items VALUES ("i005", 45, "/8GB_Hynix_f001.jpg", "DDR4 8GB Memory", "Hynix");



DROP TABLE IF EXISTS orderitems;

CREATE TABLE orderitems 
(OrderNo char(5) PRIMARY KEY, 
Itemid char(5), 
Quantity int, 
Price decimal(10,2), 
linePrice decimal(10,2)
);

ALTER TABLE orderitems ADD FOREIGN KEY (Itemid) REFERENCES items(itemNo);

INSERT INTO orderitems VALUES ("r001", "i002", 2, 135, 140);
INSERT INTO orderitems VALUES ("r002", "i004", 1, 35, 35);
INSERT INTO orderitems VALUES ("r003", "i005", 1, 45, 45);
INSERT INTO orderitems VALUES ("r004", "i002", 1, 65, 70);
INSERT INTO orderitems VALUES ("r005", "i003", 2, 105, 110);



DROP TABLE IF EXISTS orders;

CREATE TABLE orders
(userId char(5),
OrderNo char(5),
Status char(5)
);

ALTER TABLE orders ADD FOREIGN KEY (userId) REFERENCES Users(userId);
ALTER TABLE orders ADD FOREIGN KEY (OrderNo) REFERENCES orderitems(OrderNo);

INSERT INTO orders VALUES ("c001", "r001", "D");
INSERT INTO orders VALUES ("c001", "r002", "S");
INSERT INTO orders VALUES ("c003", "r003", "S");
INSERT INTO orders VALUES ("c004", "r004", "P");
INSERT INTO orders VALUES ("c002", "r005", "P");
