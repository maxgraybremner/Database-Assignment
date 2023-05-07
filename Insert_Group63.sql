/* Insert_Group63.sql */

USE CTSDB;

INSERT INTO VEHICLE_TYPE(Veh_TypeID, Veh_Type_Description)
    VALUES('se', 'sedan'),
    ('ha', 'hatchback'),
    ('bt', 'boxtruck'),
    ('uv', 'utility vehicle'),
    ('va', 'van'),
    ('pm', 'people mover');

INSERT INTO VEHICLE(VIN, Veh_TypeID, Veh_Make, Veh_Model, Veh_Year, Veh_Colour, Veh_RegoNum, Veh_Odometer, Veh_Availability, Veh_For_Passenger, Veh_For_Cargo)
    VALUES('WBA7T2C02LCD06343', 'se', 'BMW', '7 Series', '2020', 'silver', '921GQ3', 5984, 'y', 'y', 'n'),
    ('WBS3U920X0J966829', 'se', 'BMW', '3 Series', '2019', 'black', '241KST', 23984, 'n', 'y', 'n'),
    ('WAUZZZ8V5G1048824', 'se', 'Audi', 'A5', '2018', 'black', '841GD5', 85846, 'n', 'y', 'n'),
    ('W1W8ED6Y7LP320845', 'va', 'Mercedes-Benz', 'Sprinter', '2019', 'white', '699KJB',47154, 'y', 'n', 'y'),
    ('WDF9066352E036011', 'pm', 'Mercedes-Benz', 'Sprinter', '2019', 'white', '656GB5', 18126, 'n', 'y', 'n'),
    ('WDF9066352E086788', 'pm', 'Mercedes-Benz', 'Sprinter', '2019', 'black', '886CH8', 23156, 'n', 'y', 'n'),
    ('JHDFM8JR1XXX10152', 'bt', 'Hino', '300 Series', '2016', 'white', 'XQZ4CH', 125684, 'n', 'n', 'y'),
    ('JHDFC2AG1XXX10349', 'bt', 'Hino', '300 Series', '2016', 'white', '235EDO', 184693, 'n', 'n', 'y'),
    ('JHDFC2AG1XXX10594', 'bt', 'Hino', '300 Series', '2017', 'white', '331TFT', 155811, 'y', 'n', 'y'),
    ('MR0HA3CD400387900', 'uv', 'Toyota', 'Hilux', '2017', 'white', '233XOR', 90545, 'y', 'y', 'y'),
    ('MR0HA3CD400355234', 'uv', 'Toyota', 'Hilux', '2017', 'white', '234XOR', 84569, 'n', 'y', 'y'),
    ('MR0HA3CD400323564', 'uv', 'Toyota', 'Hilux', '2017', 'white', '235XOR', 112556, 'n', 'y', 'y'),
    ('KMHH351EMNU176947', 'ha', 'Hyundai', 'i30', '2022', 'white', '166GU8', 32565, 'n', 'y', 'n'),
    ('KMHH351EMNU156489', 'ha', 'Hyundai', 'i30', '2022', 'black', '348FR3', 74859, 'n', 'y', 'n'),
    ('KMHH351EMNU122345', 'ha', 'Hyundai', 'i30', '2022', 'black', '595FI3', 12457, 'y', 'y', 'n');

INSERT INTO PASSENGER_VEHICLE()
    VALUES('WBA7T2C02LCD06343'),
    ('WBS3U920X0J966829'),
    ('WAUZZZ8V5G1048824'),
    ('W1W8ED6Y7LP320845'),
    ('WDF9066352E036011'),
    ('WDF9066352E086788'),
    ('JHDFM8JR1XXX10152'),
    ('JHDFC2AG1XXX10349'),
    ('JHDFC2AG1XXX10594'),
    ('MR0HA3CD400387900'),
    ('MR0HA3CD400355234'),
    ('MR0HA3CD400323564'),
    ('KMHH351EMNU176947'),
    ('KMHH351EMNU156489'),
    ('KMHH351EMNU122345');


INSERT INTO CARGO_VEHICLE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO MAINTENANCE_REPAIR()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO DRIVER()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO LANGUAGE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO COUNTRY()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO OFFICIAL_ROLE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO OFFICIAL()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO COUNTRY_LANGUAGE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO DRIVER_LANGUAGE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO OFFICIAL_LANGAUGE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO LOCATION_TYPE()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO LOCATION()
    VALUES(),
    (),
    (),
    (),
    ();

INSERT INTO TRIP()
    VALUES(),
    (),
    (),
    (),
    ();
