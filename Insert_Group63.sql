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

INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('WBA7T2C02LCD06343', 4);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('WBS3U920X0J966829', 4);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('WAUZZZ8V5G1048824', 4);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('WDF9066352E036011', 12);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('WDF9066352E086788', 12);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('MR0HA3CD400387900', 4);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('MR0HA3CD400355234', 4);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('MR0HA3CD400323564', 4);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('KMHH351EMNU176947', 5);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('KMHH351EMNU156489', 5);
INSERT INTO PASSENGER_VEHICLE(VIN, Pass_seat_capacity) VALUES('KMHH351EMNU122345', 5);


INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('W1W8ED6Y7LP320845', 71, 4.1);
INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('JHDFM8JR1XXX10152', 89, 4.5);
INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('JHDFC2AG1XXX10349', 89, 4.5);
INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('JHDFC2AG1XXX10594', 89, 4.5);
INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('MR0HA3CD400387900', 43, 3.2);
INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('MR0HA3CD400355234', 43, 3.2);
INSERT INTO CARGO_VEHICLE(VIN, Carg_cfeet_capacity, Carg_tons_capacity) VALUES('MR0HA3CD400323564', 43, 3.2);

INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail) VALUES('WBS3U920X0J966829', 23984, 'm', '2023-06-02', 1163.75, '20,000km inspection');
INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail) VALUE('WDF9066352E036011', 18126, 'r', '2023-05-18', 240,'Air-Conditioning is not cold and engine fan full speed');
INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail) VALUE('JHDFM8JR1XXX10152', 125684, 'm', '2023-05-29', 831, '125,000km service');
INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail) VALUE('JHDFM8JR1XXX10152', 125700, 'r', '2023-06-01', 831, 'investogate shudder when changing gears');
INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail) VALUE('MR0HA3CD400355234', 84569, 'r', '2023-05-11', 140, 'Investigate intermittently blowing white smoke while driving on the highway');
INSERT INTO MAINTENANCE_REPAIR(VIN, OdometerReading, MR_Type, MR_Date, MR_Cost, MR_Detail) VALUE('KMHH351EMNU176947', 32565, 'm', '2023-05-12', 812.2, '30,000km service and an issue during cold start.');

INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('PPQ5I09LZNYU', 'Agnes', 'Wauters', 2, 'n');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('WFU6TKIW97RQ', 'Mitra', 'Brownlow', 3, 'y');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('V3R9FM7PX5RR', 'Normand', 'Fontana', 1, 'n');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('P7IYXITZINK3', 'Chetan', 'Molloy', 3, 'n');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('KS3GI45FXI0N', 'Suzana', 'Adamsen', 2, 'y');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('7NXIYPNVYOHD', 'Shalmaneser', 'Morison', 1, 'y');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('G16W6R6OUELF', 'Judita', 'Paul', 4, 'n');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('UZ4B2RHA6U62', 'Rukmini', 'Brioschi', 4, 'n');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('97E29S93TMUS', 'Glafira', 'Jacquet', 2, 'n');
INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable) VALUES('OUW35JY1U8BW', 'Darragh', 'Aliprandi', 3, 'n');

INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Abkhazian", "ab");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Afar", "aa");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Afrikaans", "af");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Akan", "ak");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Albanian", "sq");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Amharic", "am");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Arabic", "ar");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Aragonese", "an");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Armenian", "hy");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Assamese", "as");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Avaric", "av");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Avestan", "ae");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Aymara", "ay");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Azerbaijani", "az");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Bambara", "bm");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Bashkir", "ba");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Basque", "eu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Belarusian", "be");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Bengali", "bn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Bislama", "bi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Bosnian", "bs");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Breton", "br");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Bulgarian", "bg");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Burmese", "my");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Catalan, Valencian", "ca");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Chamorro", "ch");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Chechen", "ce");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Chichewa, Chewa, Nyanja", "ny");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Chinese", "zh");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Church�Slavonic, Old Slavonic,�Old�Church�Slavonic", "cu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Chuvash", "cv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Cornish", "kw");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Corsican", "co");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Cree", "cr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Croatian", "hr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Czech", "cs");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Danish", "da");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Divehi, Dhivehi, Maldivian", "dv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Dutch,�Flemish", "nl");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Dzongkha", "dz");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("English", "en");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Esperanto", "eo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Estonian", "et");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ewe", "ee");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Faroese", "fo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Fijian", "fj");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Finnish", "fi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("French", "fr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Western Frisian", "fy");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Fulah", "ff");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Gaelic, Scottish Gaelic", "gd");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Galician", "gl");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ganda", "lg");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Georgian", "ka");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("German", "de");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Greek, Modern (1453�)", "el");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kalaallisut, Greenlandic", "kl");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Guarani", "gn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Gujarati", "gu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Haitian, Haitian Creole", "ht");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Hausa", "ha");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Hebrew", "he");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Herero", "hz");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Hindi", "hi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Hiri Motu", "ho");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Hungarian", "hu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Icelandic", "is");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ido", "io");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Igbo", "ig");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Indonesian", "id");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Interlingua�(International Auxiliary Language Association)", "ia");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Interlingue, Occidental", "ie");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Inuktitut", "iu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Inupiaq", "ik");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Irish", "ga");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Italian", "it");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Japanese", "ja");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Javanese", "jv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kannada", "kn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kanuri", "kr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kashmiri", "ks");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kazakh", "kk");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Central Khmer", "km");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kikuyu, Gikuyu", "ki");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kinyarwanda", "rw");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kirghiz, Kyrgyz", "ky");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Komi", "kv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kongo", "kg");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Korean", "ko");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kuanyama, Kwanyama", "kj");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Kurdish", "ku");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Lao", "lo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Latin", "la");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Latvian", "lv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Limburgan, Limburger, Limburgish", "li");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Lingala", "ln");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Lithuanian", "lt");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Luba-Katanga", "lu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Luxembourgish, Letzeburgesch", "lb");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Macedonian", "mk");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Malagasy", "mg");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Malay", "ms");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Malayalam", "ml");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Maltese", "mt");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Manx", "gv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Maori", "mi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Marathi", "mr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Marshallese", "mh");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Mongolian", "mn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Nauru", "na");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Navajo, Navaho", "nv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("North Ndebele", "nd");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("South Ndebele", "nr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ndonga", "ng");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Nepali", "ne");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Norwegian", "no");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Norwegian Bokm�l", "nb");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Norwegian Nynorsk", "nn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sichuan Yi, Nuosu", "ii");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Occitan", "oc");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ojibwa", "oj");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Oriya", "or");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Oromo", "om");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ossetian, Ossetic", "os");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Pali", "pi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Pashto, Pushto", "ps");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Persian", "fa");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Polish", "pl");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Portuguese", "pt");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Punjabi, Panjabi", "pa");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Quechua", "qu");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Romanian,�Moldavian, Moldovan", "ro");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Romansh", "rm");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Rundi", "rn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Russian", "ru");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Northern Sami", "se");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Samoan", "sm");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sango", "sg");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sanskrit", "sa");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sardinian", "sc");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Serbian", "sr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Shona", "sn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sindhi", "sd");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sinhala, Sinhalese", "si");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Slovak", "sk");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Slovenian", "sl");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Somali", "so");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Southern Sotho", "st");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Spanish, Castilian", "es");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Sundanese", "su");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Swahili", "sw");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Swati", "ss");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Swedish", "sv");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tagalog", "tl");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tahitian", "ty");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tajik", "tg");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tamil", "ta");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tatar", "tt");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Telugu", "te");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Thai", "th");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tibetan", "bo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tigrinya", "ti");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tonga�(Tonga Islands)", "to");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tsonga", "ts");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Tswana", "tn");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Turkish", "tr");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Turkmen", "tk");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Twi", "tw");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Uighur, Uyghur", "ug");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Ukrainian", "uk");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Urdu", "ur");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Uzbek", "uz");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Venda", "ve");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Vietnamese", "vi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Volap�k", "vo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Walloon", "wa");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Welsh", "cy");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Wolof", "wo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Xhosa", "xh");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Yiddish", "yi");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Yoruba", "yo");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Zhuang, Chuang", "za");
INSERT INTO LANGUAGE(LanguageName, LanguageCode) VALUE("Zulu", "zu");

INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Australia", "AU");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Canada", "CA");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Colombia", "CO");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Egypt", "EG");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Israel", "IL");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Italy", "IT");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Serbia", "RS");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Spain", "ES");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Tonga", "TO");
INSERT INTO COUNTRY(CountryName, CountryCode) VALUES("Zimbabwe", "ZW"); 

INSERT INTO OFFICIAL_ROLE(roleID, roleDescription) VALUES('EC', 'Event Co-ordinator');
INSERT INTO OFFICIAL_ROLE(roleID, roleDescription) VALUES('TO', 'Team Organiser');
INSERT INTO OFFICIAL_ROLE(roleID, roleDescription) VALUES('BM', 'Board Member');
INSERT INTO OFFICIAL_ROLE(roleID, roleDescription) VALUES('SO', 'Swimming Official');
INSERT INTO OFFICIAL_ROLE(roleID, roleDescription) VALUES('MA', 'Marshal');
    
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('ND9N4T8L', 'TO', "AU", 'Jolie', 'Cullen');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('IT7YN37F', 'BM',"CA", 'Valerie', 'Rose');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('9KY8GJFP', 'BM',"CO", 'Andrés', 'Valdez');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('Z2J3OWJ7', 'TO', "EG", 'Amani', 'Zaman');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('6P79BNKI', 'EC',"IL", 'Samia', 'Muhammad');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('ZRFG65JG', 'SO',"IT", 'Palmiro', 'Cattaneo');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('S8OATL1F', 'EC',"RS", 'Srećko', 'Tomić');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('RQG16IZV', 'SO',"ES", 'Amador', 'Trujillo');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('T5YMTFPG', 'MA',"TO", 'Tevita', 'Chen');
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName) VALUES('F9336KVE', 'MA',"ZW", 'Kofi', 'Kamau'); 

INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("AU", 'en', 72);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("AU", 'zh', 3.9);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("AU", 'ar', 1.4);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("AU", 'vi', 1.3);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("CA", 'en', 98);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("CA", 'fr', 22.8);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("CA", 'zh', 12.4);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("CA", 'pa', 2.6);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("CO", 'es', 99.5);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("CO", 'en', 3.82);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("EG", 'ar', 78);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("EG", 'en', 39.98);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IL", 'en', 84.97);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IL", 'he', 53);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IL", 'ar', 20.9);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IT", 'it', 97.41);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IT", 'en', 13.74);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IT", 'fr', 8.46);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("IT", 'es', 6.56);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("RS", 'sr',98);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ES", 'es', 98);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ES", 'en', 11.7);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ES", 'fr', 5.85);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ES", 'ro', 2.78);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ES", 'it', 1.93);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("TO", 'to', 80.5);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("TO", 'en', 15.4);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ZW", 'en', 61.7);
INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken) VALUES("ZW", 'sn', 29);

INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('EN','WFU6TKIW97RQ','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('FR','WFU6TKIW97RQ','5');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('zh','WFU6TKIW97RQ','4');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('en','V3R9FM7PX5RR','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('es','V3R9FM7PX5RR','1');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('sn','V3R9FM7PX5RR','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('to','V3R9FM7PX5RR','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('en','P7IYXITZINK3','5');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('fr','P7IYXITZINK3','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('sn','P7IYXITZINK3','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('en','KS3GI45FXI0N','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('sr','KS3GI45FXI0N','4');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('ar','KS3GI45FXI0N','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('pa','KS3GI45FXI0N','1');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('to','7NXIYPNVYOHD','4');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('pa','7NXIYPNVYOHD','1');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('zh','7NXIYPNVYOHD','5');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('en','G16W6R6OUELF','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('vi','G16W6R6OUELF','1');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('he','G16W6R6OUELF','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('it','UZ4B2RHA6U62','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('en','UZ4B2RHA6U62','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('to','UZ4B2RHA6U62','5');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('fr','97E29S93TMUS','1');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('es','97E29S93TMUS','3');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('it','97E29S93TMUS','5');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('ar','OUW35JY1U8BW','2');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('vi','OUW35JY1U8BW','5');
INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf) VALUES('he','OUW35JY1U8BW','1');

INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('ND9N4T8L','en','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('ND9N4T8L','to','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('ND9N4T8L','ar','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('IT7YN37F','en','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('IT7YN37F','fr','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('IT7YN37F','zh','5');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('9KY8GJFP','es','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('9KY8GJFP','en','2');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('Z2J3OWJ7','ar','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('Z2J3OWJ7','en','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('6P79BNKI','ar','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('6P79BNKI','en','2');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('ZRFG65JG','it','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('ZRFG65JG','es','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('ZRFG65JG','en','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('S8OATL1F','sr','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('S8OATL1F','en','2');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('RQG16IZV','es','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('RQG16IZV','it','4');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('RQG16IZV','fr','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('T5YMTFPG','to','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('T5YMTFPG','en','3');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('F9336KVE','sn','1');
INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference) VALUES('F9336KVE','en','3');

INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('00', 'Booking Office');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('01', 'Head Office');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('02', 'Car Park');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('03', 'Warehouse');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('04', 'Guzman y Gomez');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('05', 'Swimming Pool');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('06', 'Running Track');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('07', 'Velodrome');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('08', 'Soccer Field');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('09', 'Basketball Court');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('10', 'Marathon Start');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('11', 'Marathon End');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('12', 'Beach');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('13', 'Accomodation');
INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription) VALUES('14', 'Airport');

INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('13', '30', 'Parkes Road', 'Seaholme', 'VIC', '3018');
INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('05', '27', 'Gilbert Street', 'Lapoinya', 'TAS', '7325');
INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('14', '69', 'Commercial Street', 'Newham Park', 'VIC', '3442');
INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('08', '28', 'Boland Park', 'Dingo Beach', 'QLD', '4800');
INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('04', '67', 'Stanley Drive', 'Tuckombil Tilk', 'NSW', '2477');
INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('07', '21', 'Magnolia Drive', 'Caravan Head', 'NSW', '2225');
INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode) VALUES('09', '4202', 'Asbury Court', 'Maitland', 'NSW', '2320');

INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('97E29S93TMUS', 'ND9N4T8L', 'en', 1, 5, 'WBS3U920X0J966829', '2023-02-08 10:30:00', '2023-02-08 11:00:00', '2023-02-08 09:15:25', '2023-02-08 11:45:00', 24054, 24084);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('V3R9FM7PX5RR', '9KY8GJFP', 'es', 2, 3, 'JHDFM8JR1XXX10152', '2023-02-10 05:00:00', '2023-02-10 08:00:00', '2023-02-10 05:12:00', '2023-02-10 08:05:20', 125684, 127517);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('7NXIYPNVYOHD', 'T5YMTFPG', 'to', 6, 7, 'KMHH351EMNU176947', '2023-02-12 09:30:00', '2023-02-12 11:00:00', '2023-02-12 09:46:13', '2023-02-12 11:05:30', 32615, 32995);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('V3R9FM7PX5RR', 'F9336KVE', 'sn', 7, 1, 'WBA7T2C02LCD06343', '2023-02-12 21:00:00', '2023-02-12 22:30:00', '2023-02-12 21:23:01', '2023-02-12 22:47:05', 5984, 7034);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('PPQ5I09LZNYU', 'ZRFG65JG', 'it', 3, 2, 'MR0HA3CD400355234', '2023-02-08 07:45:00', '2023-02-08 11:00:00', '2023-02-08 07:12:12', '2023-02-08 11:42:10', 84569, 84648);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('UZ4B2RHA6U62', 'T5YMTFPG', 'to', 4, 6, 'MR0HA3CD400355234', '2023-07-10 12:15:00', '2023-07-10 14:30:00', NULL, NULL, NULL, NULL);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('97E29S93TMUS', 'RQG16IZV', 'es', 5, 2, 'WBA7T2C02LCD06343', '2023-07-12 15:30:00', '2023-07-12 16:15:00', NULL, NULL, NULL, NULL);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('UZ4B2RHA6U62', '9KY8GJFP', 'es', 1, 6, 'MR0HA3CD400355234', '2023-07-13 5:15:00', '2023-07-13 6:30:00', NULL, NULL, NULL, NULL);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('97E29S93TMUS', 'RQG16IZV', 'es', 5, 2, 'WBA7T2C02LCD06343', '2023-07-16 15:30:00', '2023-07-16 16:15:00', NULL, NULL, NULL, NULL);
INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) VALUES('UZ4B2RHA6U62', '9KY8GJFP', 'es', 1, 6, 'MR0HA3CD400355234', '2023-07-20 5:15:00', '2023-07-20 6:30:00', NULL, NULL, NULL, NULL);