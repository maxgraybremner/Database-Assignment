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
    ('JHDFM8JR1XXX10152', 125684, 'm', '2023-05-29', 831, '125,000km service'),
    ('JHDFM8JR1XXX10152', 125700, 'r', '2023-06-01', 831, 'investogate shudder when changing gears'),
    ('MR0HA3CD400355234', 84569, 'r', '2023-05-11', 140, 'Investigate intermittently blowing white smoke while driving on the highway'),
    ('KMHH351EMNU176947', 32565, 'm', '2023-05-12', 596.99, '30,000km service and an issue during cold start.');

INSERT INTO DRIVER(DriverLicenseNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable)
    VALUES('PPQ5I09LZNYU', 'Agnes', 'Wauters', 2, 'n'),
    ('WFU6TKIW97RQ', 'Mitra', 'Brownlow', 3, 'y'),
    ('V3R9FM7PX5RR', 'Normand', 'Fontana', 1, 'n'),
    ('P7IYXITZINK3', 'Chetan', 'Molloy', 3, 'n'),
    ('KS3GI45FXI0N', 'Suzana', 'Adamsen', 2, 'y'),
    ('7NXIYPNVYOHD', 'Shalmaneser', 'Morison', 1, 'y'),
    ('G16W6R6OUELF', 'Judita', 'Paul', 4, 'n'),
    ('UZ4B2RHA6U62', 'Rukmini', 'Brioschi', 4, 'n'),
    ('97E29S93TMUS', 'Glafira', 'Jacquet', 2, 'n'),
    ('OUW35JY1U8BW', 'Darragh', 'Aliprandi', 3, 'n');

INSERT INTO LANGUAGE(LanguageName, LanguageCode)
    VALUES("Abkhazian", "ab"), ("Afar", "aa"), ("Afrikaans", "af"), ("Akan", "ak"), ("Albanian", "sq"), ("Amharic", "am"), ("Arabic", "ar"), ("Aragonese", "an"), ("Armenian", "hy"), ("Assamese", "as"), ("Avaric", "av"), ("Avestan", "ae"), ("Aymara", "ay"), ("Azerbaijani", "az"), ("Bambara", "bm"), ("Bashkir", "ba"), ("Basque", "eu"), ("Belarusian", "be"), ("Bengali", "bn"), ("Bislama", "bi"), ("Bosnian", "bs"), ("Breton", "br"), ("Bulgarian", "bg"), ("Burmese", "my"), ("Catalan, Valencian", "ca"), ("Chamorro", "ch"), ("Chechen", "ce"), ("Chichewa, Chewa, Nyanja", "ny"), ("Chinese", "zh"), ("Church Slavonic, Old Slavonic, Old Church Slavonic", "cu"), ("Chuvash", "cv"), ("Cornish", "kw"), ("Corsican", "co"), ("Cree", "cr"), ("Croatian", "hr"), ("Czech", "cs"), ("Danish", "da"), ("Divehi, Dhivehi, Maldivian", "dv"), ("Dutch, Flemish", "nl"), 
    ("Dzongkha", "dz"), ("English", "en"), ("Esperanto", "eo"), ("Estonian", "et"), ("Ewe", "ee"), ("Faroese", "fo"), ("Fijian", "fj"), ("Finnish", "fi"), ("French", "fr"), ("Western Frisian", "fy"), ("Fulah", "ff"), ("Gaelic, Scottish Gaelic", "gd"), ("Galician", "gl"), ("Ganda", "lg"), ("Georgian", "ka"), ("German", "de"), ("Greek, Modern (1453–)", "el"), ("Kalaallisut, Greenlandic", "kl"), ("Guarani", "gn"), ("Gujarati", "gu"), ("Haitian, Haitian Creole", "ht"), ("Hausa", "ha"), ("Hebrew", "he"), ("Herero", "hz"), ("Hindi", "hi"), ("Hiri Motu", "ho"), ("Hungarian", "hu"), ("Icelandic", "is"), ("Ido", "io"), ("Igbo", "ig"), ("Indonesian", "id"), ("Interlingua (International Auxiliary Language Association)", "ia"), ("Interlingue, Occidental", "ie"), ("Inuktitut", "iu"), ("Inupiaq", "ik"), ("Irish", "ga"), ("Italian", "it"), ("Japanese", "ja"), 
    ("Javanese", "jv"), ("Kannada", "kn"), ("Kanuri", "kr"), ("Kashmiri", "ks"), ("Kazakh", "kk"), ("Central Khmer", "km"), ("Kikuyu, Gikuyu", "ki"), ("Kinyarwanda", "rw"), ("Kirghiz, Kyrgyz", "ky"), ("Komi", "kv"), ("Kongo", "kg"), ("Korean", "ko"), ("Kuanyama, Kwanyama", "kj"), ("Kurdish", "ku"), ("Lao", "lo"), ("Latin", "la"), ("Latvian", "lv"), ("Limburgan, Limburger, Limburgish", "li"), ("Lingala", "ln"), ("Lithuanian", "lt"), ("Luba-Katanga", "lu"), ("Luxembourgish, Letzeburgesch", "lb"), ("Macedonian", "mk"), ("Malagasy", "mg"), ("Malay", "ms"), ("Malayalam", "ml"), ("Maltese", "mt"), ("Manx", "gv"), ("Maori", "mi"), ("Marathi", "mr"), ("Marshallese", "mh"), ("Mongolian", "mn"), ("Nauru", "na"), ("Navajo, Navaho", "nv"), ("North Ndebele", "nd"), ("South Ndebele", "nr"), ("Ndonga", "ng"), ("Nepali", "ne"), ("Norwegian", "no"), 
    ("Norwegian Bokmål", "nb"), ("Norwegian Nynorsk", "nn"), ("Sichuan Yi, Nuosu", "ii"), ("Occitan", "oc"), ("Ojibwa", "oj"), ("Oriya", "or"), ("Oromo", "om"), ("Ossetian, Ossetic", "os"), ("Pali", "pi"), ("Pashto, Pushto", "ps"), ("Persian", "fa"), ("Polish", "pl"), ("Portuguese", "pt"), ("Punjabi, Panjabi", "pa"), ("Quechua", "qu"), ("Romanian, Moldavian, Moldovan", "ro"), ("Romansh", "rm"), ("Rundi", "rn"), ("Russian", "ru"), ("Northern Sami", "se"), ("Samoan", "sm"), ("Sango", "sg"), ("Sanskrit", "sa"), ("Sardinian", "sc"), ("Serbian", "sr"), ("Shona", "sn"), ("Sindhi", "sd"), ("Sinhala, Sinhalese", "si"), ("Slovak", "sk"), ("Slovenian", "sl"), ("Somali", "so"), ("Southern Sotho", "st"), ("Spanish, Castilian", "es"), ("Sundanese", "su"), ("Swahili", "sw"), ("Swati", "ss"), ("Swedish", "sv"), ("Tagalog", "tl"), ("Tahitian", "ty"), ("Tajik", "tg"), 
    ("Tamil", "ta"), ("Tatar", "tt"), ("Telugu", "te"), ("Thai", "th"), ("Tibetan", "bo"), ("Tigrinya", "ti"), ("Tonga (Tonga Islands)", "to"), ("Tsonga", "ts"), ("Tswana", "tn"), ("Turkish", "tr"), ("Turkmen", "tk"), ("Twi", "tw"), ("Uighur, Uyghur", "ug"), ("Ukrainian", "uk"), ("Urdu", "ur"), ("Uzbek", "uz"), ("Venda", "ve"), ("Vietnamese", "vi"), ("Volapük", "vo"), ("Walloon", "wa"), ("Welsh", "cy"), ("Wolof", "wo"), ("Xhosa", "xh"), ("Yiddish", "yi"), ("Yoruba", "yo"), ("Zhuang, Chuang", "za"), 
    ("Zulu", "zu");


INSERT INTO COUNTRY(CountryName, CountryCode)
    VALUES("Australia", "AU"),
    ("Canada", "CA"),
    ("Colombia", "CO"),
    ("Egypt", "EG"),
    ("Israel", "IL"),
    ("Italy", "IT"),
    ("Serbia", "RS"),
    ("Spain", "ES"),
    ("Tonga", "TO"),
    ("Zimbabwe", "ZW"); 

INSERT INTO OFFICIAL_ROLE(roleID, roleDescription)
    VALUES('EC', 'Event Co-ordinator'),
    ('TO', 'Team Organiser'),
    ('BM', 'Board Member'),
    ('SO', 'Swimming Official'),
    ('MA', 'Marshal');
    
    
INSERT INTO OFFICIAL(OfficialID, OfficialRole, CountryCode, OfficialFirstName, OfficialLastName)
    VALUES('ND9N4T8L', 'TO', "AU", 'Jolie', 'Cullen'),
    ('IT7YN37F', 'BM',"CA", 'Valerie', 'Rose'),
    ('9KY8GJFP', 'BM',"CO", 'Andrés', 'Valdez'),
    ('Z2J3OWJ7', 'TO', "EG", 'Amani', 'Zaman'),
    ('6P79BNKI', 'EC',"IL", 'Samia', 'Muhammad'),
    ('ZRFG65JG', 'SO',"IT", 'Palmiro', 'Cattaneo'),
    ('S8OATL1F', 'EC',"RS", 'Srećko', 'Tomić'),
    ('RQG16IZV', 'SO',"ES", 'Amador', 'Trujillo'),
    ('T5YMTFPG', 'MA',"TO", 'Tevita', 'Chen'),
    ('F9336KVE', 'MA',"ZW", 'Kofi', 'Kamau'); 

INSERT INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken)
    VALUES("AU", 'en', 72),
    ("AU", 'zh', 3.9),
    ("AU", 'ar', 1.4),
    ("AU", 'vi', 1.3), 
    ("CA", 'en', 98),
    ("CA", 'fr', 22.8),
    ("CA", 'zh', 12.4),
    ("CA", 'pa', 2.6),
    ("CO", 'es', 99.5),
    ("CO", 'en', 3.82), 
    ("EG", 'ar', 78),
    ("EG", 'en', 39.98),
    ("IL", 'en', 84.97),
    ("IL", 'he', 53),
    ("IL", 'ar', 20.9),
    ("IT", 'it', 97.41),
    ("IT", 'en', 13.74),
    ("IT", 'fr', 8.46),
    ("IT", 'es', 6.56),
    ("RS", 'sr',98),
    ("ES", 'es', 98),
    ("ES", 'en', 11.7),
    ("ES", 'fr', 5.85),
    ("ES", 'ro', 2.78),
    ("ES", 'it', 1.93),
    ("TO", 'to', 80.5),
    ("TO", 'en', 15.4), 
    ("ZW", 'en', 61.7),
    ("ZW", 'sn', 29); 

INSERT INTO DRIVER_LANGUAGE (LanguageCode, DriverLicenseNum, DriverLanguageProf)
    VALUES('EN','WFU6TKIW97RQ','2'),
    ('FR','WFU6TKIW97RQ','5'),
    ('zh','WFU6TKIW97RQ','4'),
    ('en','V3R9FM7PX5RR','2'),
    ('es','V3R9FM7PX5RR','1'),
    ('sn','V3R9FM7PX5RR','2'),
    ('to','V3R9FM7PX5RR','3'),
    ('en','P7IYXITZINK3','5'),
    ('fr','P7IYXITZINK3','3'),
    ('sn','P7IYXITZINK3','2'),
    ('en','KS3GI45FXI0N','2'),
    ('sr','KS3GI45FXI0N','4'),
    ('ar','KS3GI45FXI0N','3'),
    ('pa','KS3GI45FXI0N','1'),
    ('to','7NXIYPNVYOHD','4'),
    ('pa','7NXIYPNVYOHD','1'),
    ('zh','7NXIYPNVYOHD','5'),
    ('en','G16W6R6OUELF','3'),
    ('vi','G16W6R6OUELF','1'),
    ('he','G16W6R6OUELF','3'),
    ('it','UZ4B2RHA6U62','2'),
    ('en','UZ4B2RHA6U62','3'),
    ('to','UZ4B2RHA6U62','5'),
    ('fr','97E29S93TMUS','1'),
    ('es','97E29S93TMUS','3'),
    ('it','97E29S93TMUS','5'),
    ('ar','OUW35JY1U8BW','2'),
    ('vi','OUW35JY1U8BW','5'),
    ('he','OUW35JY1U8BW','1');

INSERT INTO OFFICIAL_LANGUAGE (OfficialID, LanguageCode, Off_Lang_Preference)
    VALUES('ND9N4T8L','en','5'),
    ('ND9N4T8L','to','2'),
    ('ND9N4T8L','ar','2'),
    ('IT7YN37F','en','5'),
    ('IT7YN37F','fr','4'),
    ('IT7YN37F','zh','1'),
    ('9KY8GJFP','es','5'),
    ('9KY8GJFP','en','4'),
    ('Z2J3OWJ7','ar','5'),
    ('Z2J3OWJ7','en','3'),
    ('6P79BNKI','ar','5'),
    ('6P79BNKI','en','4'),
    ('ZRFG65JG','it','5'),
    ('ZRFG65JG','es','3'),
    ('ZRFG65JG','en','3'),
    ('S8OATL1F','sr','5'),
    ('S8OATL1F','en','4'),
    ('RQG16IZV','es','5'),
    ('RQG16IZV','it','3'),
    ('RQG16IZV','fr','3'),
    ('T5YMTFPG','to','5'),
    ('T5YMTFPG','en','4'),
    ('F9336KVE','sn','5'),
    ('F9336KVE','en','4');

INSERT INTO LOCATION_TYPE (LocTypeID, LocTypeDescription)
    VALUES('00', 'Booking Office'),
       ('01', 'Head Office'),
       ('02', 'Car Park'),
       ('03', 'Warehouse'),
       ('04', 'Guzman y Gomez'),
       ('05', 'Swimming Pool'),
       ('06', 'Running Track'),
       ('07', 'Velodrome'),
       ('08', 'Soccer Field'),
       ('09', 'Basketball Court'),
       ('10', 'Marathon Start'),
       ('11', 'Marathon End'),
       ('12', 'Beach'),
       ('13', 'Accomodation'),
       ('14', 'Airport');

INSERT INTO LOCATION (LocationTypeID, StreetNo, StreetName, City, State, Postcode)
    VALUES('13', '30', 'Parkes Road', 'Seaholme', 'VIC', '3018'),
        ('05', '27', 'Gilbert Street', 'Lapoinya', 'TAS', '7325'),
        ('14', '69', 'Commercial Street', 'Newham Park', 'VIC', '3442'),
        ('08', '28', 'Boland Park', 'Dingo Beach', 'QLD', '4800'),
        ('04', '67', 'Stanley Drive', 'Tuckombil Tilk', 'NSW', '2477'),
        ('07', '21', 'Magnolia Drive', 'Caravan Head', 'NSW', '2225'),
        ('09', '4202', 'Asbury Court', 'Maitland', 'NSW', '2320');

INSERT INTO TRIP (DriverLicenseNum, OfficialID, LanguageCode, PickUpLocID, DropOffLocID, VIN, StartTimeIntended, EndTimeIntended, StartTimeActual, EndTimeActual, StartOdometerKM, EndOdometerKM) 
    VALUES('97E29S93TMUS', 'ND9N4T8L', 'en', 1, 5, 'WBS3U920X0J966829', '2023-02-08 09:00:00', '2023-02-08 11:00:00', '2023-02-08 09:15:25', '2023-02-08 11:45:00', 24054, 24084),
    ('V3R9FM7PX5RR', '9KY8GJFP', 'es', 2, 3, 'JHDFM8JR1XXX10152', '2023-02-10 05:00:00', '2023-02-10 08:00:00', '2023-02-10 05:12:00', '2023-02-10 08:05:20', 125684, 127517),
    ('7NXIYPNVYOHD', 'T5YMTFPG', 'to', 6, 7, 'KMHH351EMNU176947', '2023-02-08 09:00:00', '2023-02-08 11:00:00', '2023-02-08 09:46:13', '2023-02-08 11:05:30', 32615, 32995),
    ('V3R9FM7PX5RR', 'F9336KVE', 'sn', 7, 1, 'WBA7T2C02LCD06343', '2023-02-12 09:00:00', '2023-02-12 10:30:00', '2023-02-12 09:23:01', '2023-02-12 17:47:05', 5984, 7034),
    ('PPQ5I09LZNYU', 'ZRFG65JG', 'it', 3, 2, 'MR0HA3CD400355234', '2023-02-08 07:00:00', '2023-02-08 11:00:00', '2023-02-08 09:12:12', '2023-02-08 11:42:10', 84569, 84648);

