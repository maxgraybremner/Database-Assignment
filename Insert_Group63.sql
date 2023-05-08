INSERT INTO VEHICLE (VIN, Veh_TypeID, Veh_Make, Veh_Model, Veh_Year, Veh_Colour, Veh_RegoNum, Veh_Odometer, Veh_Availability, Veh_For_Passenger, Veh_For_Cargo)
VALUES ('Y734H348E051B7592', '09', 'Toyota', 'Corolla', '2018', 'White', '129FBH', 34509, 'Y', 'Y', 'N');

INSERT INTO PASSENGER_VEHICLE (VIN, Pass_seat_capacity)
VALUES ('Y734H348E051B7592', 5);

INSERT INTO CARGO_VEHICLE (VIN, Carg_cfeet_capacity, Carg_tons_capacity)
VALUES ('Y734H348E051B7592', 100, 2.5);

INSERT INTO MAINTENANCE_REPAIR (VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail)
VALUES ('Y734H348E051B7592', 34509, 'Tires', '2023-04-01', 189.00, 'Tire change and rotation');

INSERT INTO DRIVER (DriverLicenceNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable)
VALUES ('1452892345', 'Jack', 'Downs', 'A', 'Y');

INSERT INTO LANGUAGE (LanguageCode, LanguageName)
VALUES ('en', 'English');

INSERT INTO COUNTRY (CountryCode, CountryName)
VALUES ('UK', 'United Kingdom');

INSERT INTO OFFICIAL_ROLE (RoleID, RoleDescription)
VALUES ('08', 'Driver');

INSERT INTO OFFICIAL (OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName)
VALUES ('O9176234', '08', 'AU', 'Darcy', 'Reilly');

INSERT INTO COUNTRY_LANGUAGE (CountryCode, LanguageCode, PercentageSpoken)
VALUES ('US', 'en', 80.0);