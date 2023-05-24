/* Query_Group63.sql */

/*Q1 A list of available Drivers sorted according to their clearance level. Display 
the driver’s licence number, first name, last name, and the clearance level.*/
SELECT DriverLicenseNum AS "Driver's License Number", 
DriverFirstName AS "First Name", 
DriverLastName AS "Last Name", 
ClearanceLevel AS "Security Clearance Level"
FROM DRIVER
WHERE IsAvailable = 'y'
ORDER BY ClearanceLevel DESC;


/*Q2 Find the Locations whose city names consist of one or more words, and the 
last word is four character long ending with a ‘k’. For each such location, 
display its street number, street name, and city.*/
SELECT StreetNo AS "Street Number", 
StreetName AS "Street Name", 
City
FROM Location
WHERE City IS NOT NULL
AND RIGHT(City, 1) = 'k'
AND LENGTH(SUBSTRING_INDEX(City, ' ', -1)) = 4;     


/*Q3 A list of Officials and their highest preferred languages. 
Sort according to their First name followed by Last name. 
Display their full names and the highest preferred languages 
(names and preferences). Note that there is only one highest preferred language 
(1 is highest preference) for each official */
SELECT CONCAT(o.OfficialFirstName, ' ', o.OfficialLastName) AS 'Official Full Name', 
l.LanguageName AS 'Preferred Language'
FROM Official_Language AS ol, Official AS o, Language AS l
WHERE o.OfficialID = ol.OfficialID
AND l.LanguageCode = ol.LanguageCode
AND (ol.OfficialID, ol.Off_Lang_Preference) = (
    SELECT ol.OfficialID, MIN(Off_Lang_Preference)
    FROM Official_Language
)
ORDER BY CONCAT(o.OfficialFirstName, ' ', o.OfficialLastName);



/*Q4 The date on which the most recent Trip(s) was(were) completed. Show the 
date as well as the vehicle model(s) and type(s) (description) involved in the 
trip(s). */
SELECT DATE(t.EndTimeActual) AS 'Most Recent date',
v.veh_model AS "Vehicle Model",
vt.Veh_Type_Description AS "Vehicle Type"
FROM trip AS t, vehicle AS v, vehicle_type AS vt
WHERE DATE(t.EndTimeActual) = (
    SELECT MAX(DATE(EndTimeActual))
    FROM trip
);


/*Q5 List the Vehicles which have been driven more than 1000 KM in total. 
Display the vehicle registration numbers and total kilometres travelled. 
Show the list sorted by total kilometre travelled.*/
SELECT v.Veh_RegoNum as 'Registration Number',
(t.EndOdometerKM - t.StartOdometerKM) AS "Total KM's travelled"
FROM vehicle v, trip t
WHERE v.VIN = t.vin AND (t.EndOdometerKM - t.StartOdometerKM) > 1000
ORDER BY (t.EndOdometerKM - t.StartOdometerKM) DESC;




/*Q6 Find the Passenger Vehicles whose one or more (single) repair costs were 
more than the average repair cost of all vehicles. For each vehicle, display 
the vehicle registration number, make, model, seat capacity, and total repair 
cost. Note that if a vehicle went for multiple repairs, its total repair cost is 
the sum of all these (single) repair costs. */
SELECT v.Veh_RegoNum AS "Vehicle Registration Number", 
v.Veh_Make AS "Vehicle Make", 
v.Veh_Model AS "Vehicle Model", 
pv.Pass_seat_capacity AS "Seat capacity",
sum(mr.mr_cost) AS "Total Cost"
FROM vehicle AS v, passenger_vehicle AS pv, MAINTENANCE_REPAIR AS mr
GROUP BY v.VIN
HAVING sum(mr.mr_cost) > (
    SELECT AVG(mr_cost)
    FROM MAINTENANCE_REPAIR
    GROUP BY VIN
);

/*Q7 A list of all Drivers who have not been involved in any trip yet. Display the 
drivers’ full names, security clearance levels, and the languages they speak 
with at their highest proficiency levels. Note that a driver may speak in 
more than one language at his/her highest level of proficiency. 
*/
SELECT CONCAT(d.DriverFirstName, ' ', d.DriverLastName) AS 'Driver Full Name',
d.ClearanceLevel AS 'Security Clearance Level',
l.LanguageName AS "Driver's most proficient language"
FROM driver AS d, driver_language as dl, language AS l
WHERE NOT EXISTS (
    SELECT t.DriverLicenseNum
    FROM trip AS t
    WHERE t.DriverLicenseNum = d.DriverLicenseNum
)
AND dl.DriverLanguageProf = (
    SELECT MAX(DriverLanguageProf)
    FROM driver_language as dls
    WHERE dl.DriverLicenseNum = dls.DriverLicenseNum
);


/*Q8 For each vehicle type (e.g., Sedan), list the number of future bookings of 
vehicles if number of future bookings in each type is more than 2. For each 
vehicle type, display the number of bookings. Sort the output in descending 
order of the number of bookings.*/
SELECT vt.Veh_Type_Description AS "Vehicle Type",
COUNT(v.veh_typeid) AS "Number of future booking if more than 2"
FROM Trip AS t, JOIN vehicle AS v, vehicle_type AS vt
WHERE t.StartTimeIntended > CURDATE()
GROUP BY v.veh_typeid
HAVING COUNT(v.veh_typeid) >= 2
ORDER BY COUNT(v.veh_typeid) DESC;