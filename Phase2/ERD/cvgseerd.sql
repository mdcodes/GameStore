CREATE DATABASE cvgs;
USE cvgs; 


CREATE TABLE Employee (id int IDENTITY NOT NULL, Username varchar(255) NOT NULL UNIQUE, Name varchar(20) NOT NULL, Surname varchar(20) NOT NULL, Phone int NOT NULL, Email varchar(255) NOT NULL, Password varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Event (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL, [Date] datetime NOT NULL, Time datetime NULL, Location varchar(255) NOT NULL, Price int NULL, Employeeid int NOT NULL, PRIMARY KEY (id));
CREATE TABLE Reviews (id int IDENTITY NOT NULL, Approved tinyint NOT NULL, Gameid int NOT NULL, MemberID int NOT NULL, Rating int NOT NULL, ReviewText varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Game (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL UNIQUE, Price numeric(5, 2) NULL, Employeeid int NOT NULL, Developerid int NOT NULL, Categoryid int NOT NULL, PRIMARY KEY (id));
CREATE TABLE Developer (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Category (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Member (id int IDENTITY NOT NULL, Username varchar(255) NOT NULL UNIQUE, Password varchar(255) NOT NULL, Gender char(1) NOT NULL, Birthdate datetime NOT NULL, Email varchar(255) NOT NULL UNIQUE, MailingAddress varchar(255) NOT NULL, ShippingAddress varchar(255) NOT NULL, PhoneNumber varchar(10) NOT NULL, Categoryid int NOT NULL, Platformid int NOT NULL, PRIMARY KEY (id));
CREATE TABLE Platform (id int IDENTITY NOT NULL, name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
ALTER TABLE Reviews ADD CONSTRAINT FKReviews453866 FOREIGN KEY (Gameid) REFERENCES Game (id);
ALTER TABLE Event ADD CONSTRAINT FKEvent12892 FOREIGN KEY (Employeeid) REFERENCES Employee (id);
ALTER TABLE Game ADD CONSTRAINT FKGame139973 FOREIGN KEY (Employeeid) REFERENCES Employee (id);
ALTER TABLE Game ADD CONSTRAINT FKGame637186 FOREIGN KEY (Developerid) REFERENCES Developer (id);
ALTER TABLE Game ADD CONSTRAINT FKGame600755 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Reviews ADD CONSTRAINT FKReviews911774 FOREIGN KEY (MemberID) REFERENCES Member (id);
ALTER TABLE Member ADD CONSTRAINT FKMember254575 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Member ADD CONSTRAINT FKMember25122 FOREIGN KEY (Platformid) REFERENCES Platform (id);
