insert into vehicle_company values ('TOYOTA MOTOR CORPORATION','Akio Toyoda');
insert into vehicle_company values ('VOLKSWAGEN AG','Herbert Diess');
insert into vehicle_company values ('GENERAL MOTORS COMPANY','Mary Barra');

insert into brand values ('Toyota', 150000, 'TOYOTA MOTOR CORPORATION');
insert into brand values ('Lexus', 80000, 'TOYOTA MOTOR CORPORATION');
insert into brand values ('Volkswagen', 120000, 'VOLKSWAGEN AG');
insert into brand values ('Lamborghini', 50000, 'VOLKSWAGEN AG');
insert into brand values ('Chevrolet', 60000, 'GENERAL MOTORS COMPANY');

insert into Model values ('Land Cruiser 300','SUV','Toyota');
insert into Model values ('Coaster','Bus','Toyota');
insert into Model values ('LC 500','Cabriolet','Lexus');
insert into Model values ('Tiguan','CUV','Volkswagen');
insert into Model values ('Aventador','Coupe roadster','Lamborghini');
insert into Model values ('Spark','Hatchback','Chevrolet');

--LC300
insert into Vehicle values ('Land Cruiser 300','TLC300X001','2021','Basic','Vitrine',60000);
insert into Options values ('TLC300X001','Red','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X002','2021','Basic','Sold',60000);
insert into Options values ('TLC300X002','Black','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X003','2021','Premium','Ordered',75000);
insert into Options values ('TLC300X003','Red-Black','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X004','2021','Premium','Sold',75000);
insert into Options values ('TLC300X004','White-Black','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X005','2021','Basic','Available',60000);
insert into Options values ('TLC300X005','Red','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X006','2021','Basic','Available',60000);
insert into Options values ('TLC300X006','Black','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X007','2021','Premium','Available',75000);
insert into Options values ('TLC300X007','Red-Black','5.7-litre petrol V8','10-speed automatic gearbox');
insert into Vehicle values ('Land Cruiser 300','TLC300X008','2021','Premium','Available',75000);
insert into Options values ('TLC300X008','White-Black','5.7-litre petrol V8','10-speed automatic gearbox');

--Coaster
insert into Vehicle values ('Coaster','CoaX001','2021','Basic-23','Vitrine',45000);
insert into Options values ('CoaX001','White-Blue','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX002','2021','Basic-29','Sold',48000);
insert into Options values ('CoaX002','White','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX003','2020','Basic-23','Available',45000);
insert into Options values ('CoaX003','White-Brown','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX004','2020','Basic-29','Available',48000);
insert into Options values ('CoaX004','White','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX005','2016','Basic-23','Available',45000);
insert into Options values ('CoaX005','White-Blue','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX006','2018','Basic-29','Available',48000);
insert into Options values ('CoaX006','White','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX007','2019','Basic-23','Available',45000);
insert into Options values ('CoaX007','White-Brown','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');
insert into Vehicle values ('Coaster','CoaX008','2017','Basic-29','Available',48000);
insert into Options values ('CoaX008','White','4.0L Turbo Diesel Engine','6 speed Aisin AH15/16 manual');


--LC
insert into Vehicle values ('LC 500','LCX001','2021','Premium','Vitrine',38000);
insert into Options values ('LCX001','White','GSE 5.0-litre V8 engine','10-speed automatic');
insert into Vehicle values ('LC 500','LCX002','2020','Premium','Sold',38000);
insert into Options values ('LCX002','White','GSE 5.0-litre V8 engine','10-speed automatic');
insert into Vehicle values ('LC 500','LCX003','2020','Premium','Sold',38000);
insert into Options values ('LCX003','White','GSE 5.0-litre V8 engine','10-speed automatic');
insert into Vehicle values ('LC 500','LCX004','2019','Premium','Available',38000);
insert into Options values ('LCX004','White','GSE 5.0-litre V8 engine','10-speed automatic');
insert into Vehicle values ('LC 500','LCX005','2018','Premium','Available',38000);
insert into Options values ('LCX005','White','GSE 5.0-litre V8 engine','10-speed automatic');
insert into Vehicle values ('LC 500','LCX006','2018','Premium','Available',38000);
insert into Options values ('LCX006','White','GSE 5.0-litre V8 engine','10-speed automatic');

--Tiguan
insert into Vehicle values ('Tiguan','TiguanX001','2021','Premium','Vitrine',27000);
insert into Options values ('TiguanX001','White','4.0-litre V8 engine','8-speed automatic');
insert into Vehicle values ('Tiguan','TiguanX002','2021','Basic','Available',24000);
insert into Options values ('TiguanX002','White','4.0-litre V8 engine','8-speed automatic');
insert into Vehicle values ('Tiguan','TiguanX003','2021','Basic','Available',24000);
insert into Options values ('TiguanX003','White','4.0-litre V8 engine','8-speed automatic');
insert into Vehicle values ('Tiguan','TiguanX004','2021','Premium','Available',27000);
insert into Options values ('TiguanX004','White','4.0-litre V8 engine','8-speed automatic');
insert into Vehicle values ('Tiguan','TiguanX005','2021','Premium','Available',27000);
insert into Options values ('TiguanX005','White','4.0-litre V8 engine','8-speed automatic');

--Aventador
insert into Vehicle values ('Aventador','AvenX001','2021','Luxe','Vitrine',300000);
insert into Options values ('AvenX001','Black','6.5 L L539 V12','7-speed ISR Graziano automated manual');
insert into Vehicle values ('Aventador','AvenX002','2021','Luxe','Sold',300000);
insert into Options values ('AvenX002','Black-Red','6.5 L L539 V12','7-speed ISR Graziano automated manual');
insert into Vehicle values ('Aventador','AvenX003','2021','Luxe','Ordered',300000);
insert into Options values ('AvenX003','Yellow','6.5 L L539 V12','7-speed ISR Graziano automated manual');
insert into Vehicle values ('Aventador','AvenX004','2021','Luxe','Ordered',300000);
insert into Options values ('AvenX004','Blue','6.5 L L539 V12','7-speed ISR Graziano automated manual');
insert into Vehicle values ('Aventador','AvenX005','2021','Luxe','Available',300000);
insert into Options values ('AvenX005','Red','6.5 L L539 V12','7-speed ISR Graziano automated manual');
insert into Vehicle values ('Aventador','AvenX006','2021','Luxe','Available',300000);
insert into Options values ('AvenX006','Black','6.5 L L539 V12','7-speed ISR Graziano automated manual');


--Spark
insert into Vehicle values ('Spark','SparkX001','2021','Basic','Vitrine',18000);
insert into Options values ('SparkX001','Black','1.4L I-4 DOHC','5-speed manual');
insert into Vehicle values ('Spark','SparkX002','2021','Basic','Sold',18000);
insert into Options values ('SparkX002','Black','1.4L I-4 DOHC','5-speed manual');
insert into Vehicle values ('Spark','SparkX003','2021','Basic','Sold',18000);
insert into Options values ('SparkX003','Black','1.4L I-4 DOHC','5-speed manual');
insert into Vehicle values ('Spark','SparkX004','2021','Basic','Available',18000);
insert into Options values ('SparkX004','Black','1.4L I-4 DOHC','5-speed manual');
insert into Vehicle values ('Spark','SparkX005','2021','Basic','Available',18000);
insert into Options values ('SparkX005','Black','1.4L I-4 DOHC','5-speed manual');

--Employee
insert into Employee values ('1','Dias','Designer','Lamborghini');
insert into Employee values ('2','Daulet','Engineer','Lamborghini');
insert into Employee values ('3','Mike','CFO','Lamborghini');
insert into Employee values ('4','Leyla','CAO','Lamborghini');
insert into Employee values ('5','Dias','Designer','Toyota');
insert into Employee values ('6','Daulet','Engineer','Toyota');
insert into Employee values ('7','Mike','CFO','Toyota');
insert into Employee values ('8','Leyla','CAO','Toyota');

--COMP
insert into COMP values ('1','Toyota','TLC300X001','Atyrau');
insert into COMP values ('1','Toyota','TLC300X002','Atyrau');
insert into COMP values ('1','Toyota','TLC300X003','Atyrau');
insert into COMP values ('1','Toyota','TLC300X004','Atyrau');
insert into COMP values ('1','Toyota','TLC300X005','Atyrau');
insert into COMP values ('1','Toyota','TLC300X006','Atyrau');
insert into COMP values ('1','Toyota','TLC300X007','Atyrau');
insert into COMP values ('1','Toyota','TLC300X008','Atyrau');
insert into COMP values ('2','Toyota','CoaX001','Aktau');
insert into COMP values ('2','Toyota','CoaX002','Aktau');
insert into COMP values ('2','Toyota','CoaX003','Aktau');
insert into COMP values ('2','Toyota','CoaX004','Aktau');
insert into COMP values ('2','Toyota','CoaX005','Aktau');
insert into COMP values ('2','Toyota','CoaX006','Aktau');
insert into COMP values ('2','Toyota','CoaX007','Aktau');
insert into COMP values ('2','Toyota','CoaX008','Aktau');
insert into COMP values ('3','Lexus','LCX001','Aktau');
insert into COMP values ('3','Lexus','LCX002','Aktau');
insert into COMP values ('3','Lexus','LCX003','Aktau');
insert into COMP values ('3','Lexus','LCX004','Aktau');
insert into COMP values ('3','Lexus','LCX005','Aktau');
insert into COMP values ('3','Lexus','LCX006','Aktau');
insert into COMP values ('4','Volkswagen','TiguanX001','Astana');
insert into COMP values ('4','Volkswagen','TiguanX002','Astana');
insert into COMP values ('4','Volkswagen','TiguanX003','Astana');
insert into COMP values ('4','Volkswagen','TiguanX004','Astana');
insert into COMP values ('4','Volkswagen','TiguanX005','Astana');
insert into COMP values ('5','Lamborghini','AvenX001','Atyrau');
insert into COMP values ('5','Lamborghini','AvenX002','Atyrau');
insert into COMP values ('5','Lamborghini','AvenX003','Atyrau');
insert into COMP values ('5','Lamborghini','AvenX004','Atyrau');
insert into COMP values ('5','Lamborghini','AvenX005','Atyrau');
insert into COMP values ('6','Chevrolet','SparkX001','Almaty');
insert into COMP values ('6','Chevrolet','SparkX002','Almaty');
insert into COMP values ('6','Chevrolet','SparkX003','Almaty');
insert into COMP values ('6','Chevrolet','SparkX004','Almaty');
insert into COMP values ('6','Chevrolet','SparkX005','Almaty');

--Suppliers
insert into suppliers values ('GetLC','1','Atyrau');
insert into suppliers values ('GetCT','2','Aktau');
insert into suppliers values ('GetLX','3','Aktau');
insert into suppliers values ('GetVW','4','Astana');
insert into suppliers values ('GetLamba','5','Atyrau');
insert into suppliers values ('GetCH','6','Almaty');

--SupInfo
insert into supply_info values ('TLC300X001','GetLC','1','Transmission');
insert into supply_info values ('TLC300X002','GetLC','1','Transmission');
insert into supply_info values ('TLC300X003','GetLC','1','Transmission');
insert into supply_info values ('TLC300X004','GetLC','1','Transmission');
insert into supply_info values ('TLC300X005','GetLC','1','Transmission');
insert into supply_info values ('TLC300X006','GetLC','1','Transmission');
insert into supply_info values ('TLC300X007','GetLC','1','Transmission');
insert into supply_info values ('TLC300X008','GetLC','1','Transmission');
insert into supply_info values ('CoaX001','GetCT','2','Engine');
insert into supply_info values ('CoaX002','GetCT','2','Engine');
insert into supply_info values ('CoaX003','GetCT','2','Engine');
insert into supply_info values ('CoaX004','GetCT','2','Engine');
insert into supply_info values ('CoaX005','GetCT','2','Engine');
insert into supply_info values ('CoaX006','GetCT','2','Engine');
insert into supply_info values ('CoaX007','GetCT','2','Engine');
insert into supply_info values ('CoaX008','GetCT','2','Engine');
insert into supply_info values ('LCX001','GetLX','3','Engine');
insert into supply_info values ('LCX002','GetLX','3','Engine');
insert into supply_info values ('LCX003','GetLX','3','Engine');
insert into supply_info values ('LCX004','GetLX','3','Engine');
insert into supply_info values ('LCX005','GetLX','3','Engine');
insert into supply_info values ('LCX006','GetLX','3','Engine');
insert into supply_info values ('LCX006','GetLX','3','Engine');
insert into supply_info values ('TiguanX001','GetVW','4','Transmission');
insert into supply_info values ('TiguanX002','GetVW','4','Transmission');
insert into supply_info values ('TiguanX003','GetVW','4','Transmission');
insert into supply_info values ('TiguanX004','GetVW','4','Transmission');
insert into supply_info values ('TiguanX005','GetVW','4','Transmission');
insert into supply_info values ('AvenX001','GetLamba','5','Engine');
insert into supply_info values ('AvenX002','GetLamba','5','Engine');
insert into supply_info values ('AvenX003','GetLamba','5','Engine');
insert into supply_info values ('AvenX004','GetLamba','5','Engine');
insert into supply_info values ('AvenX005','GetLamba','5','Engine');
insert into supply_info values ('AvenX006','GetLamba','5','Engine');
insert into supply_info values ('SparkX001','GetCH','5','Engine');
insert into supply_info values ('SparkX002','GetCH','5','Engine');
insert into supply_info values ('SparkX003','GetCH','5','Engine');
insert into supply_info values ('SparkX004','GetCH','5','Engine');
insert into supply_info values ('SparkX005','GetCH','5','Engine');

--Dealers
insert into Dealers values ('1','Toyota Center Atyrau','Atyrau','Toyota');
insert into Dealers values ('2','Toyota Center Aktau','Atktau','Toyota');
insert into Dealers values ('3','Lexus Aktau','Atktau','Lexus');
insert into Dealers values ('4','Volkswagen Astana','Astana','Volkswagen');
insert into Dealers values ('5','Lamborghini Atyrau','Atyrau','Lamborghini');
insert into Dealers values ('6','Chevrolet Almaty','Almaty','Chevrolet');

--Storage
insert into storage values ('1','1','TLC300X001','Vitrine');
insert into storage values ('1','1','TLC300X002','Sold');
insert into storage values ('1','1','TLC300X003','Ordered');
insert into storage values ('1','1','TLC300X004','Sold');
insert into storage values ('1','1','TLC300X005','Available');
insert into storage values ('1','1','TLC300X006','Available');
insert into storage values ('1','1','TLC300X007','Available');
insert into storage values ('1','1','TLC300X008','Available');
insert into storage values ('2','2','CoaX001','Vitrine');
insert into storage values ('2','2','CoaX002','Sold');
insert into storage values ('2','2','CoaX003','Available');
insert into storage values ('2','2','CoaX004','Available');
insert into storage values ('2','2','CoaX005','Available');
insert into storage values ('2','2','CoaX006','Available');
insert into storage values ('2','2','CoaX007','Available');
insert into storage values ('2','2','CoaX008','Available');
insert into storage values ('3','3','LCX001','Vitrine');
insert into storage values ('3','3','LCX002','Sold');
insert into storage values ('3','3','LCX003','Sold');
insert into storage values ('3','3','LCX004','Available');
insert into storage values ('3','3','LCX005','Available');
insert into storage values ('3','3','LCX006','Available');
insert into storage values ('4','4','TiguanX001','Vitrine');
insert into storage values ('4','4','TiguanX002','Available');
insert into storage values ('4','4','TiguanX003','Available');
insert into storage values ('4','4','TiguanX004','Available');
insert into storage values ('4','4','TiguanX005','Available');
insert into storage values ('5','5','AvenX001','Vitrine');
insert into storage values ('5','5','AvenX002','Sold');
insert into storage values ('5','5','AvenX003','Ordered');
insert into storage values ('5','5','AvenX004','Ordered');
insert into storage values ('5','5','AvenX005','Available');
insert into storage values ('5','5','AvenX006','Available');
insert into storage values ('6','6','SparkX001','Vitrine');
insert into storage values ('6','6','SparkX002','Sold');
insert into storage values ('6','6','SparkX003','Sold');
insert into storage values ('6','6','SparkX004','Available');
insert into storage values ('6','6','SparkX005','Available');

--Customers
insert into customers values ('1','Dias','Yermekov','87777777777','Atyrau','Abay','12','M',150000);
insert into customers values ('2','Milla','Lopes','87757777777','Astana','Kurmangazy','25','W',75000);
insert into customers values ('3','Daniel','Abd','87755555555','Atyrau','Chexov','33','M',100000);
insert into customers values ('4','Arman','Maratov','87754555555','Aktau','15','3','M',30000);

--Sale
insert into sale_info values ('1','1','1','TLC300X004','2021-12-04 09:40');
insert into sale_info values ('2','1','5','AvenX002','2021-7-15 15:15');
insert into sale_info values ('3','2','3','LCX002','2020-9-27 17:26');
insert into sale_info values ('4','3','3','LCX003','2020-4-01 11:45');
insert into sale_info values ('5','3','1','TLC300X003','2021-7-21 13:08');
insert into sale_info values ('6','4','2','CoaX003','2021-5-19 14:58');
