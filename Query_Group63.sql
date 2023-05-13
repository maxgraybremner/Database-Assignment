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

/*Q5 List the Vehicles which have been driven more than 1000 KM in total. 
Display the vehicle registration numbers and total kilometres travelled. 
Show the list sorted by total kilometre travelled.*/

SELECT vehicle.Veh_RegoNum as 'Registration Number',
(trip.EndOdometerKM - trip.StartOdometerKM) AS "Total KM's travelled"
FROM vehicle
JOIN trip
ON vehicle.VIN = trip.VIN
WHERE (trip.EndOdometerKM - trip.StartOdometerKM) > 1000
ORDER BY (trip.EndOdometerKM - trip.StartOdometerKM) DESC;

/*Q6 Find the Passenger Vehicles whose one or more (single) repair costs were 
more than the average repair cost of all vehicles. For each vehicle, display 
the vehicle registration number, make, model, seat capacity, and total repair 
cost. Note that if a vehicle went for multiple repairs, its total repair cost is 
the sum of all these (single) repair costs. */

/*Q7 A list of all Drivers who have not been involved in any trip yet. Display the 
drivers’ full names, security clearance levels, and the languages they speak 
with at their highest proficiency levels. Note that a driver may speak in 
more than one language at his/her highest level of proficiency. 
*/

/*Q8 For each vehicle type (e.g., Sedan), list the number of future bookings of 
vehicles if number of future bookings in each type is more than 2. For each 
vehicle type, display the number of bookings. Sort the output in descending 
order of the number of bookings.*/
