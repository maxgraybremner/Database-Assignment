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

/*Q3 */