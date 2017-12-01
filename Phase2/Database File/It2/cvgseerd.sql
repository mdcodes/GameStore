DROP DATABASE GameSnipeDB;

CREATE DATABASE GameSnipeDB;

USE GameSnipeDB;

CREATE TABLE Event (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL, [Date] varchar(255) NOT NULL, Time varchar(255) NULL, Location varchar(255) NOT NULL, Price decimal(4, 2) NULL, PRIMARY KEY (id));
CREATE TABLE Reviews (id int IDENTITY NOT NULL, Approved tinyint NOT NULL, Gameid int NOT NULL, MemberID int NOT NULL, Rating int NOT NULL, ReviewText varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Game (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL UNIQUE, Price numeric(5, 2) NULL, Employeeid int NOT NULL, Developerid int NOT NULL, Categoryid int NOT NULL, Wishlistid int NOT NULL, PRIMARY KEY (id));
CREATE TABLE Developer (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Category (id int IDENTITY NOT NULL, Name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Platform (id int IDENTITY NOT NULL, name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Users (id int IDENTITY NOT NULL, Name varchar(20) NOT NULL, Surname varchar(20) NOT NULL, Gender char(1) NOT NULL, Birthdate varchar(255) NOT NULL, Email varchar(255) NOT NULL UNIQUE, MailingAddress varchar(255) NOT NULL, ShippingAddress varchar(255) NOT NULL, PhoneNumber varchar(10) NOT NULL, Phone varchar(255) NOT NULL, Categoryid int NOT NULL, Platformid int NOT NULL, Wishlistid int NOT NULL, isEmployee int NULL, PRIMARY KEY (id));
CREATE TABLE Member_Event (Memberid int NOT NULL, Eventid int NOT NULL, PRIMARY KEY (Memberid, Eventid));
CREATE TABLE [Credit Card] (id int IDENTITY NOT NULL, cardNumber int NOT NULL UNIQUE, securityCode int NOT NULL, expirationDate varchar(255) NOT NULL, Memberid int NOT NULL, PRIMARY KEY (id));
CREATE TABLE Wishlist (id int IDENTITY NOT NULL, Gameid int NOT NULL, game_title varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE Member_Game (Memberid int NOT NULL, Gameid int NOT NULL, Game_Title varchar(255) NULL, PRIMARY KEY (Memberid, Gameid));
ALTER TABLE Reviews ADD CONSTRAINT FKReviews453866 FOREIGN KEY (Gameid) REFERENCES Game (id);
ALTER TABLE Game ADD CONSTRAINT FKGame637186 FOREIGN KEY (Developerid) REFERENCES Developer (id);
ALTER TABLE Game ADD CONSTRAINT FKGame600755 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Reviews ADD CONSTRAINT FKReviews129374 FOREIGN KEY (MemberID) REFERENCES Users (id);
ALTER TABLE Users ADD CONSTRAINT FKUsers786573 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Users ADD CONSTRAINT FKUsers905319 FOREIGN KEY (Platformid) REFERENCES Platform (id);
ALTER TABLE Member_Event ADD CONSTRAINT FKMember_Eve308316 FOREIGN KEY (Memberid) REFERENCES Users (id);
ALTER TABLE Member_Event ADD CONSTRAINT FKMember_Eve952079 FOREIGN KEY (Eventid) REFERENCES Event (id);
ALTER TABLE [Credit Card] ADD CONSTRAINT [FKCredit Car175825] FOREIGN KEY (Memberid) REFERENCES Users (id);
ALTER TABLE Member_Game ADD CONSTRAINT FKMember_Gam154948 FOREIGN KEY (Memberid) REFERENCES Users (id);
ALTER TABLE Member_Game ADD CONSTRAINT FKMember_Gam427268 FOREIGN KEY (Gameid) REFERENCES Game (id);
ALTER TABLE Users ADD CONSTRAINT FKUsers646227 FOREIGN KEY (Wishlistid) REFERENCES Wishlist (id);
ALTER TABLE Wishlist ADD CONSTRAINT FKWishlist818374 FOREIGN KEY (Gameid) REFERENCES Game (id);

INSERT INTO Category (Name) VALUES ('Action');
INSERT INTO dbo.Category (Name) VALUES ('Adventure');
INSERT INTO dbo.Category (Name) VALUES ('Role-Playing');
INSERT INTO dbo.Category (Name) VALUES ('Simulation');
INSERT INTO dbo.Category (Name) VALUES ('Strategy');
INSERT INTO dbo.Category (Name) VALUES ('Sports');
INSERT INTO dbo.Category (Name) VALUES ('MMO');
INSERT INTO dbo.Category (Name) VALUES ('Casual');
INSERT INTO dbo.Category (Name) VALUES ('Party');
INSERT INTO dbo.Category (Name) VALUES ('Trivia');

INSERT INTO dbo.Users (Name, Surname, Phone, Email) VALUES ('Jake', 'Penny', 555-555-5555, 'email@gmail.com');

INSERT INTO dbo.Developer (Name) VALUES ('Insomniac Games');
