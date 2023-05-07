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
    ('WBS3U920X0J966829', 'se', 'BMW', '3 Series', '2019', 'black', '241KST', 23984, 'y', 'y', 'n'),
    ('WAUZZZ8V5G1048824', 'se', 'Audi', 'A5', '2018', 'black', '841GD5', 85846, 'n', 'y', 'n'),
    ('W1W8ED6Y7LP320845', 'va', 'Mercedes-Benz', 'Sprinter', '2019', 'white', '699KJB',47154, 'y', 'n', 'y'),
    ('WDF9066352E036011', 'pm', 'Mercedes-Benz', 'Sprinter', '2019', 'white', '656GB5', 18126, 'y', 'y', 'n'),
    ('WDF9066352E086788', 'pm', 'Mercedes-Benz', 'Sprinter', '2019', 'black', '886CH8', 23156, 'n', 'y', 'n'),
    ('JHDFM8JR1XXX10152', 'bt', 'Hino', '300 Series', '2016', 'white', 'XQZ4CH', 125684, 'y', 'n', 'y'),
    ('JHDFC2AG1XXX10349', 'bt', 'Hino', '300 Series', '2016', 'white', '235EDO', 184693, 'n', 'n', 'y'),
    ('JHDFC2AG1XXX10594', 'bt', 'Hino', '300 Series', '2017', 'white', '331TFT', 155811, 'y', 'n', 'y'),
    ('MR0HA3CD400387900', 'uv', 'Toyota', 'Hilux', '2017', 'white', '233XOR', 90545, 'y', 'y', 'y'),
    ('MR0HA3CD400355234', 'uv', 'Toyota', 'Hilux', '2017', 'white', '234XOR', 84569, 'n', 'y', 'y'),
    ('MR0HA3CD400323564', 'uv', 'Toyota', 'Hilux', '2017', 'white', '235XOR', 112556, 'n', 'y', 'y'),
    ('KMHH351EMNU176947', 'ha', 'Hyundai', 'i30', '2022', 'white', '166GU8', 32565, 'n', 'y', 'n'),
    ('KMHH351EMNU156489', 'ha', 'Hyundai', 'i30', '2022', 'black', '348FR3', 74859, 'n', 'y', 'n'),
    ('KMHH351EMNU122345', 'ha', 'Hyundai', 'i30', '2022', 'black', '595FI3', 12457, 'y', 'y', 'n');

INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity)
    VALUES('WBA7T2C02LCD06343', 5),
    ('WBS3U920X0J966829', 5),
    ('WAUZZZ8V5G1048824', 5),
    ('WDF9066352E036011', 12),
    ('WDF9066352E086788', 12),
    ('MR0HA3CD400387900', 4),
    ('MR0HA3CD400355234', 4),
    ('MR0HA3CD400323564', 4),
    ('KMHH351EMNU176947', 5),
    ('KMHH351EMNU156489', 5),
    ('KMHH351EMNU122345', 5);


INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity)
    VALUES('W1W8ED6Y7LP320845', 71, 4.1),
    ('JHDFM8JR1XXX10152', 89, 4.5),
    ('JHDFC2AG1XXX10349', 89, 4.5),
    ('JHDFC2AG1XXX10594', 89, 4.5),
    ('MR0HA3CD400387900', 43, 3.2),
    ('MR0HA3CD400355234', 43, 3.2),
    ('MR0HA3CD400323564', 43, 3.2);

INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail)
    VALUES('WBS3U920X0J966829', 23984, 'm', '2023-06-02', 1163.75, '20,000km inspection'),
    ('WDF9066352E036011', 18126, 'r', '2023-05-18', 240,'Air-Conditioning is not cold and engine fan full speed'),
    ('JHDFM8JR1XXX10152', 125684, 'm', '2023-05-29', 831, '125,000km service and investogate shudder when changin gears'),
    ('MR0HA3CD400355234', 84569, 'r', '2023-05-11', 320, 'Investigate intermittently blowing white smoke while driving on the highway'),
    ('KMHH351EMNU176947', 32565, 'm', '2023-05-12', 596.99, '30,000km service and an issue during cold start.');

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
