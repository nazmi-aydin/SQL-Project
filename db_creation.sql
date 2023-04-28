CREATE DATABASE info_project_group4;
use info_project_group4;

DROP TABLE IF EXISTS INVOICE;
DROP TABLE IF EXISTS CUSTOMER;

CREATE TABLE INVOICE (
INVOICE_ID VARCHAR(30) PRIMARY KEY,
INVOICE_DATE DATE,
INVOICE_AMOUNT NUMERIC(7,2),
INVOICE_PAYMENTTYPE VARCHAR(30),
INVOICE_DISCOUNT DECIMAL(5,2),
CUSTOMER_ID VARCHAR(30),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);

INSERT INTO INVOICE VALUES('20210531-100',    '10/3/22',        '1203.967223',    'Cash',            '0.05',    '11002');
INSERT INTO INVOICE VALUES('20210531-101',    '2/3/23',        '549.5392787',    'Credit Card',    '0',    '11003');
INSERT INTO INVOICE VALUES('20210531-102',    '1/3/23',        '487.9197684',    'Cash',            '0.15',    '11004');
INSERT INTO INVOICE VALUES('20210531-103',    '9/1/22',    '580.2019905',    'Cash',    '0.05',    '11005');
INSERT INTO INVOICE VALUES('20210531-104',    '11/4/22',        '291.9774503',    'Credit Card',    '0',    '11006');
INSERT INTO INVOICE VALUES('20210531-105',    '9/9/22',        '437.3349149',    'Credit Card',    '0.1',    '11007');
INSERT INTO INVOICE VALUES('20210531-106',    '11/4/22',        '753.5759598',    'Cash',            '0',    '11008');
INSERT INTO INVOICE VALUES('20210531-107',    '1/4/23',        '335.56912',    'Credit Card',    '0.15',    '11009');
INSERT INTO INVOICE VALUES('20210531-108',    '1/5/23',        '1049.16161',    'Cash',            '0.15',    '11010');
INSERT INTO INVOICE VALUES('20210531-109',    '1/6/23',        '943.57758',    'Cash',            '0.15',    '11011');
INSERT INTO INVOICE VALUES('20210531-110',    '1/7/23',        '1255.64170',    'Credit Card',    '0.15',    '11012');
INSERT INTO INVOICE VALUES('20210531-111',    '1/8/23',        '463.01146',    'Cash',            '0.15',    '11013');
INSERT INTO INVOICE VALUES('20210531-112',    '1/9/23',        '745.54977',    'Credit Card',    '0.15',    '11014');
INSERT INTO INVOICE VALUES('20210531-113',    '1/10/23',        '1152.20027',    'Cash',            '0.15',    '11015');
INSERT INTO INVOICE VALUES('20210531-114',    '1/11/23',        '1411.78308',    'Credit Card',    '0.15',    '11016');
INSERT INTO INVOICE VALUES('20210531-115',    '1/12/23',        '1206.75712',    'Cash',            '0.15',    '11017');
INSERT INTO INVOICE VALUES('20210531-116',    '1/3/23',        '207.57969',    'Cash',            '0.15',    '11018');
INSERT INTO INVOICE VALUES('20210531-117',    '1/4/23',        '1060.44408',    'Credit Card',    '0.15',    '11019');
INSERT INTO INVOICE VALUES('20210531-118',    '1/5/23',        '292.51239',    'Credit Card',    '0.15',    '11020');
INSERT INTO INVOICE VALUES('20210531-119',    '1/6/23',        '410.92549',    'Cash',            '0.15',    '11021');
INSERT INTO INVOICE VALUES('20210531-120',    '1/7/23',        '275.27254',    'Credit Card',    '0.15',    '11008');
INSERT INTO INVOICE VALUES('20210531-121',    '1/8/23',        '1031.84233',    'Cash',            '0.15',    '11013');
INSERT INTO INVOICE VALUES('20210531-122',    '1/9/23',        '1479.73294',    'Credit Card',    '0.15',    '11013');
INSERT INTO INVOICE VALUES('20210531-123',    '1/2/23',        '138.13261',    'Cash',            '0.15',    '11004');
INSERT INTO INVOICE VALUES('20210531-124',    '1/2/23',        '562.51308',    'Credit Card',    '0.15',    '11004');



CREATE TABLE CUSTOMER (
CUSTOMER_ID VARCHAR(30) PRIMARY KEY,
CUSTOMER_FNAME VARCHAR(30),
CUSTOMER_LNAME VARCHAR(30),
CUSTOMER_ADRESS VARCHAR(90),
CUSTOMER_PHONE VARCHAR(30),
CUSTOMER_ADRESSTYPE VARCHAR(30)
);

INSERT INTO CUSTOMER VALUES ('11002', 'MUHSİN MERT', 'YALÇIN', 'Bahçelievler Mah. Hudut Sk. No:24/8 İstanbul',	'(825) 351-0966',	'Home');
INSERT INTO CUSTOMER VALUES('11003', 'CEM',	'ŞAFAK'	,'Seyrantepe, Yıldız Sk. No:48, 34418 Kâğıthane/İstanbul',	'(680) 366-0433',	'Work');
INSERT INTO CUSTOMER VALUES('11004', 'EMİRHAN', 'ANITAŞ',	'Düğmeciler Mahallesi Kızıl Sokak No:5 Daire:7 Eyüp/ İstanbul',	'(821) 679-4017',	'Other');
INSERT INTO CUSTOMER VALUES('11005', 'KUBİLAY',	'SÖNMEZ',	'Çelebi Mahallesi Osman Paşa Sokak No:8 Daire:14 Kemerburgaz / İstanbul',	'(646) 483-3181',	'Other');
INSERT INTO CUSTOMER VALUES('11006', 'HASAN',	'ERTEKİN',	'Deniz Mahallesi Gazeteciler Sitesi A/Blok Kat:16 No:24 SARIYER / İSTANBUL',	'(604) 263-7540',	'Work');
INSERT INTO CUSTOMER VALUES('11007', 'MERVENUR', 'TUNÇTAN',	'Hadımkoruyolu Caddesi Ağaoğlu My Home B2-201 Sariyer/İstanbul',	'(579) 396-6083','Home');
INSERT INTO CUSTOMER VALUES('11008', 'BAŞAR',	'UYANIK',	'Hamidiye, Cendere Cd. 23/1, 34782 Kâğıthane/İstanbul',	'(211) 649-5284','Work');
INSERT INTO CUSTOMER VALUES('11009', 'DİCLE',	'ASLAN',	'Bebek, Cevdet Paşa Cd. No: 38/B, 34342 Beşiktaş/İstanbul',	'(887) 409-3206',	'Work');
INSERT INTO CUSTOMER VALUES('11010', 'ENES',	'ZEYDAN',	'Burhaniye, Fatih Sultan Mehmet Sk. 18/A, 34676 Üsküdar/İstanbul',	'(632) 155-5487',	'Home');
INSERT INTO CUSTOMER VALUES('11011', 'EMİR', 	'ALTAYLI',	'Bakırköy, Adnan Menderes Cd. Erdal Sk. No:42/8', 	'(654) 298-8743',	'Work');
INSERT INTO CUSTOMER VALUES('11012', 'ASİYE',	'TOPÇU',	'Valide-I Atik Mahallesi Vişne Sokak Topçu Apartmanı  No:18  Üsküdar/İstanbul',	'2(445) 567-3209',	'Home');
INSERT INTO CUSTOMER VALUES('11013', 'MEHMET', 	'AYDIN',	'Mecidiyeköy Mahallesi Limon Sokak Mersin Sitesi   B/Blok Kat:3 No:8',	'(231) 826-7016',	'Other');
INSERT INTO CUSTOMER VALUES('11014', 'YASİN',	'YENİDOĞAN',	'Eyüpsultan Caddesi Pierloti Sitesi Kat:12 No:26 EYÜP/İSTANBUL',	'(987) 603-5902',	'Work');
INSERT INTO CUSTOMER VALUES('11015', 'ÖMER', 	'BUZUNOĞLU',	'Çağlayan Mahallesi Dikyokuş sokak no:7 daire:6 KAĞITHANE/İSTANBUL',	'(387) 502-3212', 'Other');
INSERT INTO CUSTOMER VALUES('11016', 'EBRU',	'ÇETİNKAYA',	'Darüşşafaka Mahallesi Venüs Sitesi C/Blok Kat:4 No:14 Ki̇lyos/İstanbul',	'(602) 719-4580',	'Home');
INSERT INTO CUSTOMER VALUES('11017',    'BURAK',     'ŞANLI',    'Maslak, Eski Büyükdere Cd. No:27, 34485 Sarıyer/İstanbul',    '(228) 276-1469',    'Work');
INSERT INTO CUSTOMER VALUES('11018', 'ASYA',	'ALİZADE',	'Esenyurt Mahallesi Surgery Rezidance 1.Etap No:334/202 Beylikdüzü/İstanbul',	'(678) 482-1639','Other');
INSERT INTO CUSTOMER VALUES('11019', 'GÖKÇE',	'KAÇAR',	'Hadımköy Mahallesi Uzak Caddesi Eskiyalı Sitesi No:15 Kat:6/18',	'(903) 719-4583',	'Home');
INSERT INTO CUSTOMER VALUES('11020', 'FIRAT',	'DİNÇER',	'Merkez Mah.  Bağlar Cd. No:14, 34406 Kâğıthane/İstanbul',	'(114) 379-2549',	'Work');
INSERT INTO CUSTOMER VALUES('11021', 'ALA',	'TOKEL',	'Caddebostan Mahallesi  Ahmet Aksöz Siteleri F/Blok Kadıköy/İstanbul',	'(942) 389-5439',	'Work');


DROP TABLE IF EXISTS CAMPAIGN;
CREATE TABLE CAMPAIGN(
CAMPAIGN_ID VARCHAR(30) PRIMARY KEY,
CAMPAIGN_DATE DATE,
CAMPAIGN_PRODUCT VARCHAR(30),
CAMPAIGN_BRAND VARCHAR(30)
);

INSERT INTO CAMPAIGN VALUES ('176523',	'10-2-22','Milk Jam',	'Zertum');
INSERT INTO CAMPAIGN VALUES ('221583',	'11-1-22',	'Goat Milk',	'İçim');
INSERT INTO CAMPAIGN VALUES ('937612',	'11-4-22',	'Hungarian Salami',	'Namet');
INSERT INTO CAMPAIGN VALUES ('549123',	'12-5-22',	'Tulum Cheese'	,'Tahsildaroğlu');
INSERT INTO CAMPAIGN VALUES ('863132',	'11-1-22',	'Green Olive'	,'Komili');
INSERT INTO CAMPAIGN VALUES ('893812',	'10-10-22',	'Sucuk',	'Namet');
INSERT INTO CAMPAIGN VALUES ('795405', '11-2-22',	'Tomato Paste',	'Fora');
INSERT INTO CAMPAIGN VALUES ('0', NULL,	NULL,	NULL);

DROP TABLE IF EXISTS BRAND;
CREATE TABLE BRAND(
BRAND_ID VARCHAR(30) PRIMARY KEY,
BRAND_CATEGORY VARCHAR(30),
VENDOR_BRAND VARCHAR(30),
BRAND_NAME VARCHAR(30)
);

INSERT INTO BRAND VALUES ('123-4569'	,'Meat Products',	'249-589-24685'	,'Torku');
INSERT INTO BRAND VALUES ('374-7437'	,'Meat Products',	'249-589-24685'	,'Polonez');
INSERT INTO BRAND VALUES ('249-6890'	,'Meat Products',	'598-736-58320',	'Maret');
INSERT INTO BRAND VALUES ('439-3689'	,'Meat Products',	'598-736-58320'	,'Erşan');
INSERT INTO BRAND VALUES ('249-7635'	,'Meat Products',	'249-589-24685'	,'Namet');
INSERT INTO BRAND VALUES ('190-2004'	,'Dairy Products',	'348-789-62394'	,'Pınar');
INSERT INTO BRAND VALUES ('305-4798'	,'Dairy Products',	'348-789-62394'	,'Tahsildaroğlu');
INSERT INTO BRAND VALUES ('198-6790'	,'Dairy Products',	'348-789-62394'	,'Altınkılıç');
INSERT INTO BRAND VALUES ('338-6392'	,'Dairy Products',	'348-789-62394'	,'Ekici');
INSERT INTO BRAND VALUES ('174-3759'	,'Dairy Products',	'340-589-74290','İçim');
INSERT INTO BRAND VALUES ('194-5782'	,'Dairy Products',	'340-589-74290'	,'Sütaş');
INSERT INTO BRAND VALUES ('485-1743'	,'Dairy Products',	'340-589-74290'	,'MuratBey');
INSERT INTO BRAND VALUES ('389-2790'	,'Breakfast Product',	'568-467-35760'	,'Komili');
INSERT INTO BRAND VALUES ('693-6900'	,'Breakfast Product',	'568-467-35760'	,'Marmarabirlik');
INSERT INTO BRAND VALUES ('317-5803'	,'Breakfast Product',	'568-467-35760'	,'Cem');
INSERT INTO BRAND VALUES ('490-5987'	,'Breakfast Product',	'478-456-23874'	,'Zertum');
INSERT INTO BRAND VALUES ('497-4568'	,'Breakfast Product',	'478-456-23874'	,'Yağmur');
INSERT INTO BRAND VALUES ('264-8275'	,'Breakfast Product',	'478-456-23874'	,'Fora');

DROP TABLE IF EXISTS VENDOR;
CREATE TABLE VENDOR(
VENDOR_ID VARCHAR(30) PRIMARY KEY,
VENDOR_NAME VARCHAR(60),
VENDOR_CATEGORY VARCHAR(30),
VENDOR_ADRESS VARCHAR(90),
VENDOR_PHONE VARCHAR(30),
VENDOR_EMAIL VARCHAR(60)
);

INSERT INTO VENDOR VALUES('478-456-23874',    'Erzurum Food Farm'    ,'Breakfast Products',    'Hüseyin Avni Ulaş mahallesi 212. Sk., 25080 Palandöken/Erzurum',    '(936) 774-8380',    'info@erzurumfoodfarm.com');
INSERT INTO VENDOR VALUES('249-589-24685',    'Afyon Sucuk Fabrika Satıs Mağazası',    'Meat Products',    'Halis mahallesi, Millet Cd no 17/a, 03100 Afyonkarahisar Merkez/Afyonkarahisar',    '(332) 660-1960',    'info@afyonsucuksatısmagazası.com');
INSERT INTO VENDOR VALUES('340-589-74290',    'Çanakkale YörükçüTeyze Süt Çiftliği',    'Dairy Products',    'Kemalpaşa, İnönü Cd. No:122, 17000 Çanakkale Merkez/Çanakkale',    '(477) 621-2078',    'info@yorukcuteyze.com');
INSERT INTO VENDOR VALUES('568-467-35760',    'Mustafa Ünal Zeytin Fabrikası',    'Breakfast Products',    'Umurbey Mahallesi Gemlik Caddesi No: 7 Gemlik / Bursa / Türkiye',    '(452) 766-0078',    'info@mustafaünalzeytin.com');
INSERT INTO VENDOR VALUES('348-789-62394',    'Abdullah Hasaydın Mandıra Çiftliği',    'Dairy Products',    'Ali İhsan Varol caddesi Kelime sokak no:24a Kars/Merkez',    '(178) 075-6669',    'info@mandıraciftligi.com');
INSERT INTO VENDOR VALUES('598-736-58320',    'Ayranoğlu Sucuk Fabrikası',    'Meat Products',    'Yunus Emre, Milli Birlik Caddesi No:89/A, 03100 Afyonkarahisar Merkez/Afyonkarahisar',    '(580) 068-6580',    'info@ayranoglusucuk.com');

DROP TABLE IF EXISTS CATEGORY;
CREATE TABLE CATEGORY(
CATEGORY_ID VARCHAR(30) PRIMARY KEY,
CATEGORY_NAME VARCHAR(30),
CATEGORY_DESCP VARCHAR(60)
);

INSERT INTO CATEGORY VALUES('4578394-56',	'Dairy Products','Products that are consumed daily or weekly.');
INSERT INTO CATEGORY VALUES('4172491-57',	'Meat Products',	'Products that includes processed animal meat.');
INSERT INTO CATEGORY VALUES('5344935-68',	'Breakfast Products',	'Products that can be consumed in breakfast.');

DROP TABLE IF EXISTS PRODUCT;
CREATE TABLE PRODUCT(
PRODUCT_ID VARCHAR(30) PRIMARY KEY,
PRODUCT_NAME VARCHAR(30),
PRODUCT_ED DATE,
PRODUCT_CATEGORY VARCHAR(30),
PRODUCT_DESCP VARCHAR(60),
PRODUCT_PRICE NUMERIC(7,2),
PRODUCT_WEIGHT VARCHAR(30),
CAMPAIGN_ID VARCHAR(30),
BRAND_ID VARCHAR(30),
CATEGORY_ID VARCHAR(30), 
VENDOR_ID VARCHAR(30), 
FOREIGN KEY(CAMPAIGN_ID) REFERENCES CAMPAIGN(CAMPAIGN_ID),
FOREIGN KEY(BRAND_ID) REFERENCES BRAND(BRAND_ID),
FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID),
FOREIGN KEY(VENDOR_ID) REFERENCES VENDOR(VENDOR_ID)
);

INSERT INTO PRODUCT VALUES('12431',	'Black Olive',	'3/12/25',		'Breakfast',	'285 grams, in a package made of glass',	'45.99',	'285',	'0',		'693-6900',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('12432',	'Green Olive',	'3/6/24',		'Breakfast',	'400 grams, in a package made of glass',	'50.99',	'400',	'863132',	'389-2790',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('13431',	'Feta Cheese',	'4/3/23',		'Breakfast',	'500 grams, in a package made of plastic',	'57.5',		'500',	'0',		'123-4569',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('13432',	'Kashar Cheese',	'3/5/24',	'Breakfast',	'200 grams, in a package made of plastic',	'38.5',		'200',	'0',		'305-4798',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('13433',	'Ezine Cheese',	'4/8/23',		'Breakfast',	'200 grams, in a package made of plastic',	'39.99',	'200',	'0',		'123-4569',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('13434',	'Tulum Cheese',	'12/3/23',		'Breakfast',	'250 grams, in a package made of plastic',	'79.99',	'250',	'549123',	'305-4798',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('13435',	'Cecil Cheese',	'5/5/24',		'Breakfast',	'200 grams, in a package made of plastic',	'64.5',		'200',	'0',		'123-4569',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('13436',	'Old Kashar Cheese', '9/1/24',	'Breakfast',	'250 grams, in a package made of plastic',	'79.99',	'250',	'0',		'123-4569',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('13437',	'Sepet Cheese',	'9/1/25',		'Breakfast',	'250 grams, in a package made of plastic',	'76.99',	'250',	'0',		'338-6392',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('13438',	'Cottage Cheese',	'9/1/25',	'Breakfast',	'200 grams, in a package made of plastic',	'37.5',		'200',	'0',		'123-4569',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('13439',	'Cream Cheese',	'9/4/23',		'Breakfast',	'270 grams, in a package made of plastic',	'42.5',		'270',	'0',		'194-5782',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('13440',	'Toast Cheese',	'4/3/24',		'Breakfast',	'250 grams, in a package made of plastic',	'54.5',		'250',	'0',		'123-4569',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('13441',	'Cheddar Cheese',	'12/1/25',	'Breakfast',	'200 grams, in a package made of plastic',	'69.99',	'200',	'0',		'305-4798',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('15431',	'Sucuk',	'6/2/25',			'Meat',			'220 grams, kangal sucuk',	'				83.99',		'220',	'893812',	'249-7635',		'4172491-57',	'249-589-24685');
INSERT INTO PRODUCT VALUES('15432',	'Hungarian Salami',	'8/5/23',	'Meat',	'450 grams, in a package made of plastic',			'95.62',	'450',	'937612',	'249-6890',		'4172491-57',	'249-589-24685');
INSERT INTO PRODUCT VALUES('15433',	'Chicken Sausage',	'5/7/25',	'Meat',	'330 grams, in a package made of plastic',			'33.5',		'330',	'0',		'190-2004',		'4172491-57',   '249-589-24685');
INSERT INTO PRODUCT VALUES('15434',	'Beef Sausage',	'5/6/23',		'Meat',	'300 grams, in a package made of plastic',			'75.99',	'300',	'0',		'190-2004',		'4172491-57',	'249-589-24685');
INSERT INTO PRODUCT VALUES('15435',	'Turkey Salami',	'10/3/25',	'Meat',	'150 grams, in a package made of plastic',			'15.99',	'150',	'0',		'249-6890',		'4172491-57',	'598-736-58320');
INSERT INTO PRODUCT VALUES('15436',	'Smoked Turkey',	'6/4/23',	'Meat',	'60 grams, in a package made of plastic',			'12.5',		'60',	'0',		'439-3689',		'4172491-57',	'598-736-58320');
INSERT INTO PRODUCT VALUES('15437',	'Beef Bacon',	'11/10/24',		'Meat',	'70 grams, in a package made of plastic',			'59.99',	'70',	'0',		'249-7635',		'4172491-57',	'598-736-58320');
INSERT INTO PRODUCT VALUES('16431',	'Cocoa Hazelnut Paste', '1/5/23',	'Breakfast',	'750 grams, in a package made of glass',	'87.99',	'750',	'0',	'317-5803',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('16433',    'Peanut Butter',    '10/3/23',    'Breakfast',    '360 grams, in a package made of glass',    '251.99',    '360',    '0',    '693-6900',    '5344935-68',    '568-467-35760');
INSERT INTO PRODUCT VALUES('16434',	'Nut Butter',	'1/4/23',			'Breakfast',	'350 grams, in a package made of glass',	'97.6',		'350',	'0',	'317-5803',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('16435',	'Tahini',	'11/3/24',			'Breakfast',	'300 grams, in a package made of glass',	'43.99',		'300',	'0',	'490-5987',		'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('16436',	'Molasses', '4/1/25',			'Breakfast',	'360 grams, in a package made of glass',	'39.5',		'360',	'0',	'497-4568',		'5344935-68',    '568-467-35760');
INSERT INTO PRODUCT VALUES('17431',	'Tomato Paste',	'7/2/23',		'Breakfast',	'710 grams, in a package made of glass',	'40.99',			'710',	'795405',	'264-8275',	'5344935-68',	'568-467-35760');
INSERT INTO PRODUCT VALUES('18431',	'Strawberry Jam',	'1/8/24',	'Breakfast',	'380 grams, in a package made of glass',	'39.99',			'380',	'0',	'693-6900',		'5344935-68',    '478-456-23874');
INSERT INTO PRODUCT VALUES('18432',	'Quince Jam',	'10/9/25',		'Breakfast',	'310 grams, in a package made of plastic',	'30.4',			'310',	'0',	'497-4568',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('18433',	'Cherry Jam',	'11/12/24',		'Breakfast',	'380 grams, in a package made of plastic',	'39.99',			'380',	'0',	'490-5987',		'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('18434',	'Milk Jam',	'1/2/23',			'Breakfast',	'350 grams, in a package made of plastic',	'45.5',			'350',	'176523',	'490-5987',	'5344935-68',	'478-456-23874');
INSERT INTO PRODUCT VALUES('19431',	'Goat Milk',	'3/2/23',		'Dairy',	'1000 grams in a package made of plastic',	'55.6',				'1000',	'221583','174-3759',	'4578394-56',   '249-589-24685');
INSERT INTO PRODUCT VALUES('19432',	'Cow Milk',	'4/2/23', 'Dairy',	'1000 grams in a package made of plastic',	'35.5',							'1000',	'0',			'485-1743',		'4578394-56',	'249-589-24685');


DROP TABLE IF EXISTS LINE;
CREATE TABLE LINE(
LINE_ID VARCHAR(30) PRIMARY KEY,
LINE_UNITS INTEGER, 
LINE_PRICE NUMERIC(7,2),
PRODUCT_ID VARCHAR(30), 
INVOICE_ID VARCHAR(30),
FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID),
FOREIGN KEY(INVOICE_ID) REFERENCES INVOICE(INVOICE_ID)
);

INSERT INTO LINE VALUES('156186',    '2',    '91.98',    '12431',    '20210531-100');
INSERT INTO LINE VALUES('156187',    '1',    '50.99',    '12432',    '20210531-107');
INSERT INTO LINE VALUES('156188',    '1',    '39.99',    '18431',    '20210531-101');
INSERT INTO LINE VALUES('156189',   '3',    '91.2',        '18432',    '20210531-106');
INSERT INTO LINE VALUES('156190',    '4',    '159.96',    '18433',    '20210531-104');
INSERT INTO LINE VALUES('156191',    '5',    '227.5',    '18434',    '20210531-105');
INSERT INTO LINE VALUES('156192',    '2',    '175.98',    '16431',    '20210531-103');
INSERT INTO LINE VALUES('156193',    '1',    '87.99',    '16431',    '20210531-102');
INSERT INTO LINE VALUES('156194',    '3',    '155.97',    '16433',    '20210531-105');
INSERT INTO LINE VALUES('156195',    '3',    '166.8',    '17431',    '20210531-106');
INSERT INTO LINE VALUES('156196',    '3',    '127.5',    '13439',    '20210531-103');
INSERT INTO LINE VALUES('156197',    '3',    '37.5',        '15436',    '20210531-104');
INSERT INTO LINE VALUES('156198',    '3',    '179.97',    '15437',    '20210531-105');
INSERT INTO LINE VALUES('156199',    '3',    '166.8',    '19431',    '20210531-101');
INSERT INTO LINE VALUES('156200',    '3',    '106.5',    '19432',    '20210531-100');
INSERT INTO LINE VALUES('156201',    '3',    '122.97',    '13435',    '20210531-107');

DROP TABLE IF EXISTS VENDOR;
CREATE TABLE VENDOR(
VENDOR_ID VARCHAR(30) PRIMARY KEY,
VENDOR_NAME VARCHAR(30),
VENDOR_CATEGORY VARCHAR(30),
VENDOR_ADRESS VARCHAR(90),
VENDOR_PHONE VARCHAR(30),
VENDOR_EMAIL VARCHAR(60)
);

INSERT INTO VENDOR VALUES('478-456-23874',    'Erzurum Food Farm    Breakfast Products    Hüseyin Avni Ulaş mahallesi 212. Sk., 25080 Palandöken/Erzurum',    '(936) 774-8380',    'info@erzurumfoodfarm.com');
INSERT INTO VENDOR VALUES('249-589-24685',    'Afyon Sucuk Fabrika Satıs Mağazası    Meat Products    Halis mahallesi, Millet Cd no 17/a, 03100 Afyonkarahisar Merkez/Afyonkarahisar',    '(332) 660-1960',    'info@afyonsucuksatısmagazası.com');
INSERT INTO VENDOR VALUES('340-589-74290',    'Çanakkale YörükçüTeyze Süt Çiftliği    Dairy Products    Kemalpaşa, İnönü Cd. No:122, 17000 Çanakkale Merkez/Çanakkale',    '(477) 621-2078',    'info@yorukcuteyze.com');
INSERT INTO VENDOR VALUES('568-467-35760',    'Mustafa Ünal Zeytin Fabrikası    Breakfast Products    Umurbey Mahallesi Gemlik Caddesi No: 7 Gemlik / Bursa / Türkiye',    '(452) 766-0078',    'info@mustafaünalzeytin.com');
INSERT INTO VENDOR VALUES('348-789-62394',    'Abdullah Hasaydın Mandıra Çiftliği    Dairy Products    Ali İhsan Varol caddesi Kelime sokak no:24a Kars/Merkez',    '(178) 075-6669',    'info@mandıraciftligi.com');
INSERT INTO VENDOR VALUES('598-736-58320',    'Ayranoğlu Sucuk Fabrikası    Meat Products    Yunus Emre, Milli Birlik Caddesi No:89/A, 03100 Afyonkarahisar Merkez/Afyonkarahisar',    '(580) 068-6580',    'info@ayranoglusucuk.com');

DROP TABLE IF EXISTS CATEGORY;
CREATE TABLE CATEGORY(
CATEGORY_ID VARCHAR(30) PRIMARY KEY,
CATEGORY_NAME VARCHAR(30),
CATEGORY_DESCP VARCHAR(60)
);

INSERT INTO CATEGORY VALUES('4578394-56',	'Dairy Products','Products that are consumed daily or weekly.');
INSERT INTO CATEGORY VALUES('4172491-57',	'Meat Products',	'Products that includes processed animal meat.');
INSERT INTO CATEGORY VALUES('5344935-68',	'Breakfast Products',	'Products that can be consumed in breakfast.');

DROP TABLE IF EXISTS SHOP;
CREATE TABLE SHOP(
SHOP_ID VARCHAR(30) PRIMARY KEY,
SHOP_ADRESS VARCHAR(90),
SHOP_PHONE VARCHAR(30)
);

INSERT INTO SHOP VALUES('1',	'Pınar Mah. Katar Cad. No: 11/515 Sarıyer/Istanbul'	,'(342) 452-6659');
INSERT INTO SHOP VALUES('2','Harbiye Mahallesi, Maçka Caddesi, Maçka Palas No:33/B Şişli/İstanbul/Turkey',	'(571) 980-1222');
INSERT INTO SHOP VALUES('3',	'Yat Limanı Çökertme Cad. Üsküdar/ İstanbul',	'(793) 566-3887');

DROP TABLE IF EXISTS SALARY;
CREATE TABLE SALARY (
SAL_ID VARCHAR(30) PRIMARY KEY,
SAL_AMOUNT INT,
SAL_DATE DATE
);

INSERT INTO SALARY VALUES('345890-23-45',    '8000',    '01/08/22');
INSERT INTO SALARY VALUES('467264-69-29',    '17000', '05/08/22');
INSERT INTO SALARY VALUES('642794-97-49',    '30000',     '15/08/22');
INSERT INTO SALARY VALUES('652085-72-51',    '48000',    '20/08/22');

DROP TABLE IF EXISTS DEPARTMENT;
CREATE TABLE DEPARTMENT(
DEPT_ID VARCHAR(30) PRIMARY KEY,
DEPT_NAME VARCHAR(30),
DEPT_PHONE VARCHAR(30)
);

INSERT INTO DEPARTMENT VALUES('4563',    'Shop Manager',    '(653) 388-2313');
INSERT INTO DEPARTMENT VALUES('5691',    'Department Staff',    '(681) 987-4455');
INSERT INTO DEPARTMENT VALUES('3892',    'Human Resources',    '(611) 056-1331');
INSERT INTO DEPARTMENT VALUES('9137',    'Sales',    '(609) 784-7344');
INSERT INTO DEPARTMENT VALUES('2964',    'Operations',    '(666) 176-8894');

DROP TABLE IF EXISTS EMPLOYEE;
CREATE TABLE EMPLOYEE (
EMP_ID INTEGER PRIMARY KEY,
EMP_FNAME VARCHAR(30),
EMP_LNAME VARCHAR(30),
EMP_PHONE VARCHAR(30),
EMP_HIREDATE DATE,
EMP_TITLE VARCHAR(30),
EMP_BIRTHDAY DATE,
EMP_ADRESS VARCHAR(90),
EMP_TRID VARCHAR(30),
SAL_ID VARCHAR(30),
SHOP_ID VARCHAR(30), 
DEPT_ID VARCHAR(30),
FOREIGN KEY(SAL_ID) REFERENCES SALARY(SAL_ID),
FOREIGN KEY(SHOP_ID) REFERENCES SHOP(SHOP_ID),
FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

INSERT INTO EMPLOYEE VALUES('192341245',    'Ali',    'Alaca',    '(984) 324-4959',    '22-2-8',    'Assistant Specialist',    '11-2-02', 'ÇINARCIK/YALOVA',       '41438025075',    '345890-23-45',    '1',    '5691');
INSERT INTO EMPLOYEE VALUES('192341246',    'Mehmet',    'Kartal',    '(832) 727-0094',    '22-1-15',    'Manager',    '3/1/01',  'GEMLİK/BURSA',               '40832241393',    '652085-72-51',    '1',    '4563');
INSERT INTO EMPLOYEE VALUES('192341247',    'Ahmet',    'Şahin',    '(461) 183-2558',    '22-7-18',    'Assistant Manager',    '4/2/01',  'KEMAH/ERZİNCAN',  '20708048934',    '642794-97-49',    '1',    '3892');
INSERT INTO EMPLOYEE VALUES('192341248',    'Öykü',    'Topçu',    '(592) 167-0843',    '22-11-02',    'Assistant Specialist',    '7/8/01', 'MERKEZ/RİZE',       '52491379091',    '345890-23-45',    '1',    '9137');
INSERT INTO EMPLOYEE VALUES('192341249',    'Polat',    'Alemdar',    '(235) 693-6878',    '22-1-03',    'Assistant Manager',    '4/2/03', 'ÜSKÜDAR/İSTANBUL',   '15590065496',    '642794-97-49',    '1',    '2964');
INSERT INTO EMPLOYEE VALUES('192341250',    'Afra',    'Saraçoğlu',    '(181) 692-1868',    '22-5-05',    'Specialist',    '5/3/1',     'BAYKAN/SİİRT',       '43885138894',    '467264-69-29',    '2',    '9137');
INSERT INTO EMPLOYEE VALUES('192341251',    'Mert',    'Yalçın', '(344) 476-7604',    '22-8-08',    'Assistant Manager',    '12/3/01',  'KAĞITHANE/İSTANBUL',      '95412048051',    '642794-97-49',    '2',    '3892');
INSERT INTO EMPLOYEE VALUES('192341252',    'Buğra',    'Sadık',    '(952) 270-4480',    '22-1-15', 'Specialist',    '7/6/01',     'ARDAHAN/KARS',           '42831940117',    '467264-69-29',    '2',    '9137');
INSERT INTO EMPLOYEE VALUES('192341253',    'Sıla',    'Ulusoy',    '(621) 150-4028',    '22-4-25',    'Manager',    '5/1/02',     'ERDEK/BALIKESİR',               '47234747164',    '652085-72-51',    '2',    '4563');
INSERT INTO EMPLOYEE VALUES('192341254',    'Yılmaz',    'Duman',    '(520) 821-8621',    '22-3-20',    'Assistant Specialist',    '6/8/02',  'EYÜP/İSTANBUL', '91534184795',    '345890-23-45',    '2',    '5691');
INSERT INTO EMPLOYEE VALUES('192341255',    'Zülal',    'Yenidoğan',    '(530) 422-1162',    '22-3-15',    'Assistant Specialist',    '1/8/01',  'GÖZTEPE/İZMİR',   '80074194181',    '345890-23-45',    '3',    '3892');
INSERT INTO EMPLOYEE VALUES('192341256',    'Dilara',    'Buzunoğlu',    '(984) 230-9773',    '22-6-30',    'Specialist',    '1/2/01',  'DİYARBAKIR',      '25520437027',    '467264-69-29',    '3',    '9137');
INSERT INTO EMPLOYEE VALUES('192341257',    'Nazmi',    'Aydın',    '(357) 778-3519',    '22-8-11',    'Manager',    '8/4/03',     'ERDEMLİ/MERSİN',           '16701521544',    '652085-72-51',    '3',    '4563');
INSERT INTO EMPLOYEE VALUES('192341258',    'Metin Eren',    'Çetinkaya',    '(555) 447-6067',    '22-5-06',    'Assistant Specialist',    '2/3/01',  'ÇINARCIK/ELAZIĞ',   '77937405498',    '345890-23-45',    '3',    '5691');

DROP TABLE IF EXISTS SUPPLY;
CREATE TABLE SUPPLY (
SUPPLY_ID VARCHAR(30) PRIMARY KEY,
SUPPLY_DATE DATE,
SUPPLY_AMOUNT VARCHAR(30),
VENDOR_ID VARCHAR(30), 
SHOP_ID VARCHAR(30),
FOREIGN KEY(VENDOR_ID) REFERENCES VENDOR(VENDOR_ID),
FOREIGN KEY(SHOP_ID) REFERENCES SHOP(SHOP_ID)
);

INSERT INTO SUPPLY VALUES('56789-1',        '8/2/22',        '100 kg',    '478-456-23874',    '1');
INSERT INTO SUPPLY VALUES('34565-2',        '10/5/22',        '130 kg',    '249-589-24685',    '3');
INSERT INTO SUPPLY VALUES('19825-2',        '11/11/22',        '190 kg',    '340-589-74290',    '2');
INSERT INTO SUPPLY VALUES('29480-4',        '10/2/22',        '350 kg',    '568-467-35760',    '1');
INSERT INTO SUPPLY VALUES('10654-9',        '8/2/22',        '200 kg',    '348-789-62394',    '3');
INSERT INTO SUPPLY VALUES('17392-10',        '1/6/22',        '450 kg',    '598-736-58320',    '2');
INSERT INTO SUPPLY VALUES('13846-11',        '6//22',        '330 kg',    '478-456-23874',    '1');
INSERT INTO SUPPLY VALUES('18379-12',        '8/8/22',        '290 kg',    '249-589-24685',    '3');
INSERT INTO SUPPLY VALUES('17378-13',        '5/9/22',        '485 kg',    '340-589-74290',    '2');
INSERT INTO SUPPLY VALUES('77494-14',        '8/3/22',        '1000 kg',    '568-467-35760',    '1');
INSERT INTO SUPPLY VALUES('28198-15',        '3/1/22',        '240 kg',    '348-789-62394',    '3');
INSERT INTO SUPPLY VALUES('31091-16',        '11/7/22',        '440 kg',    '598-736-58320',    '2');

DROP TABLE IF EXISTS CERTIFICATE;
CREATE TABLE CERTIFICATE (
CERT_ID VARCHAR(30) PRIMARY KEY,
CERT_DATE DATE,
CERT_DESCP VARCHAR(60),
CERT_TYPE VARCHAR(30),
SHOP_ID VARCHAR(30),
FOREIGN KEY(SHOP_ID) REFERENCES SHOP(SHOP_ID)
);

INSERT INTO CERTIFICATE VALUES('13872',	'19/8/22',		'Shop is clean to work and sell products.', 	'Hygiene',				'1');
INSERT INTO CERTIFICATE VALUES('19432',	'13/8/22',		'Shop is selling halal food.', 					'Halal Food',			'1');
INSERT INTO CERTIFICATE VALUES('15934',	'10/8/22',		'Shop has a managable operation and work.', 	'Business Approval',	'1');
INSERT INTO CERTIFICATE VALUES('19532',	'16/8/22',		'Shop can sell it categorized products.', 		'Sales',				'1');
INSERT INTO CERTIFICATE VALUES('13772',	'19/9/22',		'Shop is clean to work and sell products.', 	'Hygiene',				'2');
INSERT INTO CERTIFICATE VALUES('19534',	'13/9/22',		'Shop is selling halal food.', 					'Halal Food',			'2');
INSERT INTO CERTIFICATE VALUES('15234',	'10/9/22',		'Shop has a managable operation and work.', 	'Business Approval',	'2');
INSERT INTO CERTIFICATE VALUES('19632',	'16/9/22',		'Shop can sell it categorized products.', 		'Sales',				'2');
INSERT INTO CERTIFICATE VALUES('13372',	'19/10/22',		'Shop is clean to work and sell products.', 	'Hygiene',				'3');
INSERT INTO CERTIFICATE VALUES('19832',	'13/10/22',		'Shop is selling halal food.',					'Halal Food',			'3');
INSERT INTO CERTIFICATE VALUES('15834',	'10/10/22',		'Shop has a managable operation and work.', 	'Business Approval',	'3');
INSERT INTO CERTIFICATE VALUES('19542',	'16/10/22',		'Shop can sell it categorized products.', 		'Sales',				'3');

DROP TABLE IF EXISTS BILLS;
CREATE TABLE BILLS (
BILL_ID VARCHAR(30) PRIMARY KEY,
BILL_TYPE VARCHAR(30),
BILL_AMOUNT VARCHAR(30),
SHOP_ID VARCHAR(30),
FOREIGN KEY(SHOP_ID) REFERENCES SHOP(SHOP_ID)
);

INSERT INTO BILLS VALUES('3489214', 'Electricity',	'183.92',	'1');
INSERT INTO BILLS VALUES('3476241', 'Gas',	'249.44',	'1');
INSERT INTO BILLS VALUES('3490241', 'Water', '122.34',	'1');
INSERT INTO BILLS VALUES('3478926', 'Electricity' , '192.44' ,'2');
INSERT INTO BILLS VALUES('3490214',	'Gas', '302.67', '2');
INSERT INTO BILLS VALUES('3476231',	'Water',	'146.732','2' );
INSERT INTO BILLS VALUES('3490341',	'Electricity',	'210.93',	'3');
INSERT INTO BILLS VALUES('3473926',	'Gas',	'304.55',	'3');
INSERT INTO BILLS VALUES('34902142', 'Water',	'133.92',	'3');

DROP TABLE IF EXISTS RENTS;
CREATE TABLE RENTS (
RENT_ID VARCHAR(30) PRIMARY KEY,
RENT_AMOUNT VARCHAR(30),
SHOP_ID VARCHAR(30),
FOREIGN KEY(SHOP_ID) REFERENCES SHOP(SHOP_ID)
);

INSERT INTO RENTS VALUES('179823','23,000',	'1');
INSERT INTO RENTS VALUES('179824','23,000',	'1');
INSERT INTO RENTS VALUES('179825',	'23,000',	'1');
INSERT INTO RENTS VALUES('183402',	'25,000'	,'2');
INSERT INTO RENTS VALUES('183403',	'25,000',	'2');
INSERT INTO RENTS VALUES('183404',	'25,000'	,'2');
INSERT INTO RENTS VALUES('192034',	'32,000'	,'3');
INSERT INTO RENTS VALUES('192035',	'32,000'	,'3');
INSERT INTO RENTS VALUES('192036',	'32,000'	,'3');
