/* Query_Group63.sql */

/*Q1 A list of available Drivers sorted according to their clearance level. Display 
the driver’s licence number, first name, last name, and the clearance level.*/

SELECT DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel
FROM DRIVER
ORDER BY ClearanceLevel DESC;

/*Q2 Find the Locations whose city names consist of one or more words, and the 
last word is four character long ending with a ‘k’. For each such location, 
display its street number, street name, and city.*/

SELECT StreetNo, StreetName, City
FROM Location
WHERE City IS NOT NULL                              --checked for cities that do not consist of cities with less than one word
AND RIGHT(City, 1) = 'k'                            --check that the last word ends in k
AND LENGTH(SUBSTRING_INDEX(City, ' ', -1)) = 4;     --checks the length of the last word is equal to 4

/*Q3 A list of Officials and their highest preferred languages. Sort according to 
their First name followed by Last name. Display their full names and the 
highest preferred languages (names and preferences). Note that there is only 
one highest preferred language for each official. */

SELECT  CONCAT(Official.OfficialFirstName, ' ', Official.OfficialLastName) AS 'Official Full Name', 
Language.LanguageName AS 'Preferred Language'
FROM Official_Language
JOIN Official
ON Official_Language.OfficialID = Official.OfficialID
JOIN Language
ON Official_Language.languageCode = Language.languageCode
WHERE Official_Language.Off_Lang_Preference = (
    SELECT MAX(Official_Language.Off_Lang_Preference)
    FROM Official_Language
)
ORDER BY Official.OfficialFirstName;

/*Q4 The date on which the most recent Trip(s) was(were) completed. Show the 
date as well as the vehicle model(s) and type(s) (description) involved in the 
trip(s). */

SELECT DATE(MAX(trip.EndTimeActual)) AS 'Most Recent date',
vehicle.veh_model,
vehicle_type.Veh_Type_Description
FROM trip
JOIN vehicle 
ON trip.VIN = vehicle.VIN
JOIN vehicle_type
ON vehicle.veh_typeid = vehicle_type.Veh_TypeID;

/*Q5 */
