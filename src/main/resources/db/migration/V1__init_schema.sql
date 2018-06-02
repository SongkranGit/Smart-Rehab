-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `Permission`

CREATE TABLE `Permission`
(
 `Id`          INT NOT NULL ,
 `Name`        VARCHAR(45) NOT NULL ,
 `Description` VARCHAR(255) NOT NULL ,
 `CreatedDate` TIMESTAMP NOT NULL ,

PRIMARY KEY (`Id`)
) ENGINE=INNODB;





-- ************************************** `Role`

CREATE TABLE `Role`
(
 `Id`          INT NOT NULL AUTO_INCREMENT ,
 `Name`        VARCHAR(45) NOT NULL ,
 `Description` VARCHAR(255) NOT NULL ,
 `CreatedDate` TIMESTAMP NOT NULL ,
 `UpdatedDate` TIMESTAMP ,

PRIMARY KEY (`Id`)
) ENGINE=INNODB;





-- ************************************** `Patient`

CREATE TABLE `Patient`
(
 `Id`          INT NOT NULL AUTO_INCREMENT ,
 `Firstname`   VARCHAR(45) NOT NULL ,
 `Lastname`    VARCHAR(45) NOT NULL ,
 `CreatedDate` TIMESTAMP NOT NULL ,
 `UpdatedDate` TIMESTAMP ,

PRIMARY KEY (`Id`)
);





-- ************************************** `User`

CREATE TABLE `User`
(
 `Id`            INT NOT NULL AUTO_INCREMENT ,
 `Username`      VARCHAR(45) NOT NULL ,
 `Password`      VARCHAR(45) NOT NULL ,
 `Email`         VARCHAR(45) NOT NULL ,
 `RememberToken` CHAR(255) NOT NULL ,
 `IsActive`      TINYINT(1) NOT NULL ,
 `CreatedDate`   TIMESTAMP NOT NULL ,
 `UpdatedDate`   TIMESTAMP ,

PRIMARY KEY (`Id`)
) ENGINE=INNODB;





-- ************************************** `Role_Permission`

CREATE TABLE `Role_Permission`
(
 `RoleId`       INT NOT NULL ,
 `PermissionId` INT NOT NULL ,

PRIMARY KEY (`PermissionId`, `RoleId`),
CONSTRAINT `FK_Role_Permission_Role_RoleId` FOREIGN KEY  (`RoleId`) REFERENCES `Role` (`Id`),
CONSTRAINT `FK_Role_Permission_Permission_PermissionId` FOREIGN KEY  (`PermissionId`) REFERENCES `Permission` (`Id`)
);





-- ************************************** `User_Role`

CREATE TABLE `User_Role`
(
 `RoleId` INT NOT NULL ,
 `UserId` INT NOT NULL ,

PRIMARY KEY (`RoleId`, `UserId`),
CONSTRAINT `FK_User_Role_Roles_RoleId` FOREIGN KEY  (`RoleId`) REFERENCES `Role` (`Id`),
CONSTRAINT `FK_User_Role_User_Id` FOREIGN KEY  (`UserId`) REFERENCES `User` (`Id`)
) ENGINE=INNODB;




