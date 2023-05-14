/* Booking_Group63.sql */
/*  Booking 1: 
    Fname: Daniel 
    Lname: Ortega
    Country: Spain
    OfficialID: SPN99745
    Speaks: Spanish, English
    Preferred: Spanish
    Role (official?): Judge
    Start Location: 16 Brendan Thorne Place Gold Coast (Rydges Gold Coast)
    End Location: 117 Rubicon Crescent, Surfers Paradise (Swimming Pool)
    Date: April 9, 2023
    Expected Start: 10:00AM
    Expected End: 10:45AM
*/
/*  Booking 2: (associated with the above booking)
    Vehicle Type: Sedan
    VIN: SANFDAE33U1286116
    Start Odo: 126982 KM
    End Odo: 127119 KM
    Driver Fname: Md
    Driver Lname: Polash
    Language Prof: English 4
    Security Clearance: Level 2
    License Number: 098675532
    Actual Start: 10:15AM
    Actual End: 11:55AM
*/
/* OFFICIAL TABLE */
INSERT INTO OFFICIAL (
    OfficialID,
    OfficialRole,
    CountryCode,
    OfficialFirstName,
    OfficialLastName
) VALUES (
    'SPN99745',
    'Judge',
    'ES',
    'Daniel',
    'Ortega'
);
/* COUNTRY TABLE */
INSERT INTO COUNTRY (
    CountryCode,
    CountryName
) VALUES (
    'ES',
    'Spain'
);
/* TRIP TABLE */
INSERT INTO TRIP () VALUES ()