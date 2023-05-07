/* Create_Group63.sql */

CREATE DATABASE IF NOT EXISTS CTSDB;

USE CTSDB;

CREATE TABLE IF NOT EXISTS VEHICLE_TYPE(
    Veh_TypeID CHAR(2),
    Veh_Type_Description VARCHAR(40), 
    PRIMARY KEY (Veh_TypeID)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS VEHICLE(
    VIN CHAR(17),
    Veh_TypeID CHAR(2),
    Veh_Make VARCHAR(30),
    Veh_Model VARCHAR(30),
    Veh_Year CHAR(4),
    Veh_Colour VARCHAR(20),
    Veh_RegoNum CHAR(6),
    Veh_Odometer INT,
    Veh_Availability CHAR(1),
    Veh_For_Passenger CHAR(1),
    Veh_For_Cargo CHAR(1),
    PRIMARY KEY (VIN),
    FOREIGN KEY (Veh_TypeID) 
        REFERENCES VEHICLE_TYPE(Veh_TypeID)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS PASSENGER_VEHICLE(
    VIN CHAR(17),
    Pass_seat_capacity TINYINT,
    PRIMARY KEY (VIN),
    FOREIGN KEY (VIN) 
        REFERENCES VEHICLE(VIN)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS CARGO_VEHICLE(
    VIN CHAR(17),
    Carg_cfeet_capacity SMALLINT,
    Carg_tons_capacity DECIMAL(5,2),
    PRIMARY KEY (VIN),
    FOREIGN KEY (VIN) 
        REFERENCES VEHICLE(VIN)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS MAINTENANCE_REPAIR(
    VIN CHAR(17),
    OdometerReading INT,
    MR_Type CHAR(1),
    MR_Date DATE,
    MR_Cost DECIMAL(7,2),
    MR_Detail VARCHAR(100),
    PRIMARY KEY (VIN, OdometerReading),
    FOREIGN KEY (VIN) 
        REFERENCES VEHICLE(VIN)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS DRIVER(
    DriverLicenceNum CHAR(12),
    DriverFirstName VARCHAR(40),
    DriverLastName VARCHAR(40),
    ClearanceLevel CHAR(1),
    IsAvailable CHAR(1),
    PRIMARY KEY (DriverLicenceNum)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS LANGUAGE(
    LanguageCode CHAR(2),
    LanguageName VARCHAR(50),
    PRIMARY KEY (LanguageCode)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS COUNTRY(
    CountryCode CHAR(2),
    CountryName VARCHAR(50),
    PRIMARY KEY (CountryCode) 
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS OFFICIAL_ROLE(
    RoleID CHAR(2),
    RoleDescription VARCHAR(40),
    PRIMARY KEY (RoleID)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS OFFICIAL(
    OfficialID CHAR(8),
    OfficialRole CHAR(2),
    CountryCode CHAR(2),
    OfficialFirstName VARCHAR(40),
    OfficialLastName VARCHAR(40),
    PRIMARY KEY (OfficialID),
    FOREIGN KEY (OfficialRole)
        REFERENCES OFFICIAL_ROLE(RoleID),
    FOREIGN KEY (CountryCode)
        REFERENCES COUNTRY(CountryCode)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS COUNTRY_LANGUAGE(
    CountryCode CHAR(2),
    LanguageCode CHAR(2),
    PercentageSpoken DECIMAL(5,2),
    PRIMARY KEY (CountryCode, LanguageCode),
    FOREIGN KEY (CountryCode)
        REFERENCES COUNTRY(CountryCode),
    FOREIGN KEY (LanguageCode)
        REFERENCES LANGUAGE(LanguageCode)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS DRIVER_LANGUAGE(
    LanguageCode CHAR(2),
    DriverLicenceNum CHAR(12),
    DriverLanguageProf CHAR(1),
    PRIMARY KEY (LanguageCode, DriverLicenceNum),
    FOREIGN KEY (LanguageCode)
        REFERENCES LANGUAGE(LanguageCode),
    FOREIGN KEY (DriverLicenceNum)
        REFERENCES DRIVER(DriverLicenceNum)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS OFFICIAL_LANGAUGE(
    OfficialID CHAR(8),
    LanguageCode CHAR(2),
    Off_Lang_Preference CHAR(1),
    PRIMARY KEY (OfficialID, LanguageCode),
    FOREIGN KEY (OfficialID)
        REFERENCES OFFICIAL(OfficialID),
    FOREIGN KEY (LanguageCode)
        REFERENCES LANGUAGE(LanguageCode)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS LOCATION_TYPE(
    LocTypeID CHAR(2),
    LocTypeDescription VARCHAR(40),
    PRIMARY KEY(LocTypeID)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS LOCATION(
    LocationID  INT AUTO_INCREMENT,
    LocationTypeID CHAR(2),
    StreetNo VARCHAR(5),
    SteetName VARCHAR(50),
    City VARCHAR(40),
    State CHAR(3),
    Postcode CHAR(4),
    PRIMARY KEY (LocationID),
    FOREIGN KEY (LocationTypeID)
        REFERENCES LOCATION_TYPE(LocTypeID)
) ENGINE=Innodb;

CREATE TABLE IF NOT EXISTS TRIP(
    BookingRefNum INT AUTO_INCREMENT,
    DriverLicenceNum CHAR(12),
    OfficialID CHAR(8),
    LanguageCode CHAR(2),
    PickUpLocID INT,
    DropOffLocID INT,
    VIN CHAR(17),
    StartTimeIntended DATETIME,
    EndTimeIntended DATETIME,
    StartTimeActual DATETIME, 
    EndTimeActual DATETIME,
    StartOdometerKM INT,
    EndOdometerKM INT,
    PRIMARY KEY (BookingRefNum),
    FOREIGN KEY (DriverLicenceNum)
        REFERENCES DRIVER(DriverLicenceNum),
    FOREIGN KEY (OfficialID)
        REFERENCES OFFICIAL_LANGAUGE(OfficialID),
    FOREIGN KEY (LanguageCode)
        REFERENCES OFFICIAL_LANGAUGE(LanguageCode),
    FOREIGN KEY (PickUpLocID)
        REFERENCES LOCATION(LocationID),
    FOREIGN KEY (DropOffLocID)
        REFERENCES LOCATION(LocationID),
    FOREIGN KEY (VIN)
        REFERENCES VEHICLE(VIN)
) ENGINE=Innodb;