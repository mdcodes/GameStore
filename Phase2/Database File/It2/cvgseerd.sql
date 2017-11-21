CREATE TABLE Event (
  id         int IDENTITY NOT NULL, 
  Name       varchar(255) NOT NULL, 
  [Date]     datetime NOT NULL, 
  Time       datetime NULL, 
  Location   varchar(255) NOT NULL, 
  Price      decimal(4, 2) NULL, 
  Employeeid int NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Reviews (
  id         int IDENTITY NOT NULL, 
  Approved   tinyint NOT NULL, 
  Gameid     int NOT NULL, 
  MemberID   int NOT NULL, 
  Rating     int NOT NULL, 
  ReviewText varchar(255) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Game (
  id          int IDENTITY NOT NULL, 
  Name        varchar(255) NOT NULL UNIQUE, 
  Price       numeric(5, 2) NULL, 
  Employeeid  int NOT NULL, 
  Developerid int NOT NULL, 
  Categoryid  int NOT NULL, 
  Wishlistid  int NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Developer (
  id   int IDENTITY NOT NULL, 
  Name varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (id));
CREATE TABLE Category (
  id   int IDENTITY NOT NULL, 
  Name varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (id));
CREATE TABLE Platform (
  id   int IDENTITY NOT NULL, 
  name varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (id));
CREATE TABLE Member (
  id              int IDENTITY NOT NULL, 
  Gender          char(1) NOT NULL, 
  Birthdate       datetime NOT NULL, 
  Email           varchar(255) NOT NULL UNIQUE, 
  MailingAddress  varchar(255) NOT NULL, 
  ShippingAddress varchar(255) NOT NULL, 
  PhoneNumber     varchar(10) NOT NULL, 
  Categoryid      int NOT NULL, 
  Platformid      int NOT NULL, 
  Wishlistid      int NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Employee (
  id      int IDENTITY NOT NULL, 
  Name    varchar(20) NOT NULL, 
  Surname varchar(20) NOT NULL, 
  Phone   int NOT NULL, 
  Email   varchar(255) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Login (
  id       int IDENTITY NOT NULL, 
  Username varchar(255) NOT NULL UNIQUE, 
  Password varchar(255) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Login_Employee (
  Loginid    int NOT NULL, 
  Employeeid int NOT NULL, 
  PRIMARY KEY (Loginid, 
  Employeeid));
CREATE TABLE Member_Login (
  Memberid int NOT NULL, 
  Loginid  int NOT NULL, 
  PRIMARY KEY (Memberid, 
  Loginid));
CREATE TABLE Member_Event (
  Memberid int NOT NULL, 
  Eventid  int NOT NULL, 
  PRIMARY KEY (Memberid, 
  Eventid));
CREATE TABLE [Credit Card] (
  id             int IDENTITY NOT NULL, 
  cardNumber     int NOT NULL UNIQUE, 
  securityCode   int NOT NULL, 
  expirationDate varchar(255) NOT NULL, 
  Memberid       int NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Wishlist (
  id         int IDENTITY NOT NULL, 
  Gameid     int NOT NULL, 
  game_title varchar(255) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Member_Game (
  Memberid   int NOT NULL, 
  Gameid     int NOT NULL, 
  Game_Title varchar(255) NULL, 
  PRIMARY KEY (Memberid, 
  Gameid));
ALTER TABLE Reviews ADD CONSTRAINT FKReviews453866 FOREIGN KEY (Gameid) REFERENCES Game (id);
ALTER TABLE Event ADD CONSTRAINT FKEvent12892 FOREIGN KEY (Employeeid) REFERENCES Employee (id);
ALTER TABLE Game ADD CONSTRAINT FKGame139973 FOREIGN KEY (Employeeid) REFERENCES Employee (id);
ALTER TABLE Game ADD CONSTRAINT FKGame637186 FOREIGN KEY (Developerid) REFERENCES Developer (id);
ALTER TABLE Game ADD CONSTRAINT FKGame600755 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Reviews ADD CONSTRAINT FKReviews911774 FOREIGN KEY (MemberID) REFERENCES Member (id);
ALTER TABLE Member ADD CONSTRAINT FKMember254575 FOREIGN KEY (Categoryid) REFERENCES Category (id);
ALTER TABLE Member ADD CONSTRAINT FKMember25122 FOREIGN KEY (Platformid) REFERENCES Platform (id);
ALTER TABLE Login_Employee ADD CONSTRAINT FKLogin_Empl156874 FOREIGN KEY (Loginid) REFERENCES Login (id);
ALTER TABLE Login_Employee ADD CONSTRAINT FKLogin_Empl795703 FOREIGN KEY (Employeeid) REFERENCES Employee (id);
ALTER TABLE Member_Login ADD CONSTRAINT FKMember_Log990709 FOREIGN KEY (Memberid) REFERENCES Member (id);
ALTER TABLE Member_Login ADD CONSTRAINT FKMember_Log655302 FOREIGN KEY (Loginid) REFERENCES Login (id);
ALTER TABLE Member_Event ADD CONSTRAINT FKMember_Eve732832 FOREIGN KEY (Memberid) REFERENCES Member (id);
ALTER TABLE Member_Event ADD CONSTRAINT FKMember_Eve952079 FOREIGN KEY (Eventid) REFERENCES Event (id);
ALTER TABLE [Credit Card] ADD CONSTRAINT [FKCredit Car754616] FOREIGN KEY (Memberid) REFERENCES Member (id);
ALTER TABLE Member_Game ADD CONSTRAINT FKMember_Gam886200 FOREIGN KEY (Memberid) REFERENCES Member (id);
ALTER TABLE Member_Game ADD CONSTRAINT FKMember_Gam427268 FOREIGN KEY (Gameid) REFERENCES Game (id);
ALTER TABLE Member ADD CONSTRAINT FKMember394921 FOREIGN KEY (Wishlistid) REFERENCES Wishlist (id);
ALTER TABLE Wishlist ADD CONSTRAINT FKWishlist818374 FOREIGN KEY (Gameid) REFERENCES Game (id);
