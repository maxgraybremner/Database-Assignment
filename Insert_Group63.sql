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

INSERT INTO DRIVER(DriverLicenceNum, DriverFirstName, DriverLastName, ClearanceLevel, IsAvailable)
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
    VALUES("Afghanistan[b]", "AF"), ("Åland Islands", "AX"), ("Albania", "AL"), ("Algeria", "DZ"), ("American Samoa", "AS"), ("Andorra", "AD"), ("Angola", "AO"), ("Anguilla", "AI"), ("Antarctica", "AQ"), ("Antigua and Barbuda", "AG"), ("Argentina", "AR"), ("Armenia", "AM"), ("Aruba", "AW"), ("Australia", "AU"), ("Austria", "AT"), ("Azerbaijan", "AZ"), ("Bahamas", "BS"), ("Bahrain", "BH"), ("Bangladesh", "BD"), ("Barbados", "BB"), ("Belarus", "BY"), ("Belgium", "BE"), ("Belize", "BZ"), ("Benin", "BJ"), ("Bermuda", "BM"), ("Bhutan", "BT"), ("Bolivia (Plurinational State of)", "BO"), ("Bonaire, Sint Eustatius and Saba[c]", "BQ"), ("Bosnia and Herzegovina", "BA"), ("Botswana", "BW"), ("Bouvet Island", "BV"), ("Brazil", "BR"), ("British Indian Ocean Territory", "IO"), ("Brunei Darussalam", "BN"), ("Bulgaria", "BG"), ("Burkina Faso", "BF"), ("Burundi", "BI"), 
    ("Cabo Verde", "CV"), ("Cambodia", "KH"), ("Cameroon", "CM"), ("Canada", "CA"), ("Cayman Islands", "KY"), ("Central African Republic", "CF"), ("Chad", "TD"), ("Chile", "CL"), ("China[b]", "CN"), ("Christmas Island", "CX"), ("Cocos (Keeling) Islands", "CC"), ("Colombia", "CO"), ("Comoros", "KM"), ("Congo", "CG"), ("Congo, Democratic Republic of the", "CD"), ("Cook Islands", "CK"), ("Costa Rica", "CR"), ("Côte d'Ivoire", "CI"), ("Croatia", "HR"), ("Cuba", "CU"), ("Curaçao", "CW"), ("Cyprus[b]", "CY"), ("Czechia", "CZ"), ("Denmark", "DK"), ("Djibouti", "DJ"), ("Dominica", "DM"), ("Dominican Republic", "DO"), ("Ecuador", "EC"), ("Egypt", "EG"), ("El Salvador", "SV"), ("Equatorial Guinea", "GQ"), ("Eritrea", "ER"), ("Estonia", "EE"), ("Eswatini", "SZ"), ("Ethiopia", "ET"), ("Falkland Islands (Malvinas)[b]", "FK"), ("Faroe Islands", "FO"), ("Fiji", "FJ"), 
    ("Finland", "FI"), ("France", "FR"), ("French Guiana", "GF"), ("French Polynesia", "PF"), ("French Southern Territories", "TF"), ("Gabon", "GA"), ("Gambia", "GM"), ("Georgia", "GE"), ("Germany", "DE"), ("Ghana", "GH"), ("Gibraltar", "GI"), ("Greece", "GR"), ("Greenland", "GL"), ("Grenada", "GD"), ("Guadeloupe", "GP"), ("Guam", "GU"), ("Guatemala", "GT"), ("Guernsey", "GG"), ("Guinea", "GN"), ("Guinea-Bissau", "GW"), ("Guyana", "GY"), ("Haiti", "HT"), ("Heard Island and McDonald Islands", "HM"), ("Holy See", "VA"), ("Honduras", "HN"), ("Hong Kong", "HK"), ("Hungary", "HU"), ("Iceland", "IS"), ("India", "IN"), ("Indonesia", "ID"), ("Iran (Islamic Republic of)", "IR"), ("Iraq", "IQ"), ("Ireland", "IE"), ("Isle of Man", "IM"), ("Israel", "IL"), ("Italy", "IT"), ("Jamaica", "JM"), ("Japan", "JP"), ("Jersey", "JE"), ("Jordan", "JO"), ("Kazakhstan", "KZ"), 
    ("Kenya", "KE"), ("Kiribati", "KI"), ("Korea (Democratic People's Republic of)", "KP"), ("Korea, Republic of", "KR"), ("Kuwait", "KW"), ("Kyrgyzstan", "KG"), ("Lao People's Democratic Republic", "LA"), ("Latvia", "LV"), ("Lebanon", "LB"), ("Lesotho", "LS"), ("Liberia", "LR"), ("Libya", "LY"), ("Liechtenstein", "LI"), ("Lithuania", "LT"), ("Luxembourg", "LU"), ("Macao", "MO"), ("Madagascar", "MG"), ("Malawi", "MW"), ("Malaysia", "MY"), ("Maldives", "MV"), ("Mali", "ML"), ("Malta", "MT"), ("Marshall Islands", "MH"), ("Martinique", "MQ"), ("Mauritania", "MR"), ("Mauritius", "MU"), ("Mayotte", "YT"), ("Mexico", "MX"), ("Micronesia (Federated States of)", "FM"), ("Moldova, Republic of", "MD"), ("Monaco", "MC"), ("Mongolia", "MN"), ("Montenegro", "ME"), ("Montserrat", "MS"), ("Morocco", "MA"), ("Mozambique", "MZ"), ("Myanmar", "MM"), ("Namibia", "NA"), 
    ("Nauru", "NR"), ("Nepal", "NP"), ("Netherlands, Kingdom of the", "NL"), ("New Caledonia", "NC"), ("New Zealand", "NZ"), ("Nicaragua", "NI"), ("Niger", "NE"), ("Nigeria", "NG"), ("Niue", "NU"), ("Norfolk Island", "NF"), ("North Macedonia", "MK"), ("Northern Mariana Islands", "MP"), ("Norway", "NO"), ("Oman", "OM"), ("Pakistan", "PK"), ("Palau", "PW"), ("Palestine, State of[b]", "PS"), ("Panama", "PA"), ("Papua New Guinea", "PG"), ("Paraguay", "PY"), ("Peru", "PE"), ("Philippines", "PH"), ("Pitcairn", "PN"), ("Poland", "PL"), ("Portugal", "PT"), ("Puerto Rico", "PR"), ("Qatar", "QA"), ("Réunion", "RE"), ("Romania", "RO"), ("Russian Federation", "RU"), ("Rwanda", "RW"), ("Saint Barthélemy", "BL"), ("Saint Helena, Ascension and Tristan da Cunha[d]", "SH"), ("Saint Kitts and Nevis", "KN"), ("Saint Lucia", "LC"), ("Saint Martin (French part)", "MF"), 
    ("Saint Pierre and Miquelon", "PM"), ("Saint Vincent and the Grenadines", "VC"), ("Samoa", "WS"), ("San Marino", "SM"), ("Sao Tome and Principe", "ST"), ("Saudi Arabia", "SA"), ("Senegal", "SN"), ("Serbia", "RS"), ("Seychelles", "SC"), ("Sierra Leone", "SL"), ("Singapore", "SG"), ("Sint Maarten (Dutch part)", "SX"), ("Slovakia", "SK"), ("Slovenia", "SI"), ("Solomon Islands", "SB"), ("Somalia", "SO"), ("South Africa", "ZA"), ("South Georgia and the South Sandwich Islands", "GS"), ("South Sudan", "SS"), ("Spain", "ES"), ("Sri Lanka", "LK"), ("Sudan", "SD"), ("Suriname", "SR"), ("Svalbard and Jan Mayen[e]", "SJ"), ("Sweden", "SE"), ("Switzerland", "CH"), ("Syrian Arab Republic", "SY"), ("Taiwan, Province of China[b]", "TW"), ("Tajikistan", "TJ"), ("Tanzania, United Republic of", "TZ"), ("Thailand", "TH"), ("Timor-Leste", "TL"), ("Togo", "TG"), ("Tokelau", "TK"), 
    ("Tonga", "TO"), ("Trinidad and Tobago", "TT"), ("Tunisia", "TN"), ("Türkiye", "TR"), ("Turkmenistan", "TM"), ("Turks and Caicos Islands", "TC"), ("Tuvalu", "TV"), ("Uganda", "UG"), ("Ukraine", "UA"), ("United Arab Emirates", "AE"), ("United Kingdom of Great Britain and Northern Ireland", "GB"), ("United States of America", "US"), ("United States Minor Outlying Islands[f]", "UM"), ("Uruguay", "UY"), ("Uzbekistan", "UZ"), ("Vanuatu", "VU"), ("Venezuela (Bolivarian Republic of)", "VE"), ("Viet Nam", "VN"), ("Virgin Islands (British)", "VG"), ("Virgin Islands (U.S.)", "VI"), ("Wallis and Futuna", "WF"), ("Western Sahara[b]", "EH"), ("Yemen", "YE"), ("Zambia", "ZM"), 
    ("Zimbabwe", "ZW"); 



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

INSERT IGNORE INTO COUNTRY_LANGUAGE(CountryCode, LanguageCode, PercentageSpoken)
    VALUES(); 

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
