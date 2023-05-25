/* Booking_Group63.sql */
/*Q1 An Official named Daniel Ortega from Spain, having OfficialID SPN99745, 
wants to make a booking. He speaks in both Spanish and English, Spanish 
being his highest preferred language. Spanish is currently spoken by 94% of 
the total population in Spain. He will play the role of a ‘Judge’ in the 
games. He wants to travel from 16 Brendan Thorne Place, Gold Coast 
(Rydges Gold Coast) to 117 Rubicon Crescent, Surfers Paradise (Swimming 
Pool) on April 9, 2023. His expected start time is 10:00 am and end time is 
10:45 am.*/
USE CTSDB;

INSERT INTO OFFICIAL_ROLE(roleID, roleDescription)
    VALUES('JU', 'Judge');

INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName)
    VALUES('SPN99745', 'JU', 'ES', 'Daniel', 'Ortega');

INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference)
    VALUES('SPN99745', 'es', '5'),
    ('SPN99745', 'en', '4');

INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription)
    VALUES('15', 'Rydges Gold Coast');

INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode)
    VALUES('15', '16', 'Brendan Thorne Place', 'Gold Coast', 'QLD', '4132'),
    ('05', '117', 'Rubicon Crescent', 'Surfers Paradise', 'QLD', '4112');

INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) 
    VALUES(Null, 'SPN99745', 'es', 8, 9, Null, '2023-04-09 10:00:00', '2023-04-09 10:45:00', Null, Null, Null, Null);

/*Q2 The above trip is then planned to complete using the Sedan vehicle having 
VIN number SANFDAE33U1286116. The starting odometer reading for 
the vehicle is 126,982 KM. A driver with the highest preferred language of 
the official is not available, so the driver Md Polash with language 
proficiency level 4 in English and security clearance level 2 is booked. His 
licence number is 098675532. The trip actually starts at 10:15 am and ends 
at 11:55 am on the same date. At the end of the trip the odometer reading is 
recorded as 127,119 KM*/
USE CTSDB;

INSERT INTO VEHICLE(VIN, Veh_TypeID, Veh_Make, Veh_Model, Veh_Year, Veh_Colour, Veh_RegoNum, Veh_Odometer, Veh_Availability, Veh_For_Passenger, Veh_For_Cargo)
VALUES('SANFDAE33U1286116', 'se', 'Rolls Royce', 'Ghost', '2020', 'Blue', '701XYZ',126982, 'y', 'y', 'n');

INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable)
    VALUES('098675532', 'Md', 'Polash', '2', 'y');

INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf)
    VALUES('en', '098675532', '4');
    
UPDATE trip
SET 
    DriverLicenseNum = '098675532',
    VIN = 'SANFDAE33U1286116',
    StartTimeActual = '2023-04-09 10:15:00', 
    EndTimeActual = '2023-04-09 11:55:00',
    StartOdometerKM = 126982,
    EndOdometerKM = 127119

WHERE 
    OfficialID = 'SPN99745' AND 
    StartTimeIntended = '2023-04-09 10:00:00'; /* The Booking number would be used if it was known and static, but because it is autoincremented and the databeses this gets tested against are unknown, it is unfeasible to assume what it would be. */

