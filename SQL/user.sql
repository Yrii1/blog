create DATABASE blog;

use blog;

CREATE TABLE `user` (
	Id int AUTO_INCREMENT PRIMARY KEY,
    Login varchar(50),
    Email varchar(50),
    `Password` varchar(50),
    `urlAvatar` varchar(255) DEFAULT 'noFoto',
    `Role` varchar(50),
    Status boolean DEFAULT false
);

CREATE TABLE record (
	Id int AUTO_INCREMENT PRIMARY KEY,
    Id_autor int,
    `Date` varchar(25),
    Status varchar(25) default 'not approved',
    Text longtext,
    `Like` int default 0,
	`DisLike` int default 0
)