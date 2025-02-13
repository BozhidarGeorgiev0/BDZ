CREATE TABLE Trains (
		train_id INT AUTO_INCREMENT PRIMARY KEY,
		train_number VARCHAR(100) ,
		train_type VARCHAR(50),
		capacity INT,
		rating FLOAT CHECK (rating >= 0 AND rating <= 5)

	)AUTO_INCREMENT = 1001;
    ALTER TABLE Trains ADD CONSTRAINT UNIQUE (train_number);


	INSERT INTO Trains (train_number, train_type, capacity, rating) VALUES
    
    ('EXP101', 'Експресен влак', 120, 4.5),
	('EXP202', 'Експресен влак', 130, 4.2),
	('SU303', 'Пътен влак', 100, 4.0),
	('REG404', 'Регионален влак', 50, 4.3),
	('EXP505', 'Експресен влак', 140, 4.7),
	('EXP706', 'Експресен влак', 125, 4.4),
	('SU707', 'Пътен влак', 60, 4.1),
	('REG808', 'Регионален влак', 50, 4.6),
	('EXP909', 'Експресен влак', 150, 4.8),
	('EXP012', 'Експресен влак', 135, 4.5),
    ('EXP121', 'Експресен влак', 145, 4.5),
	('EXP203', 'Експресен влак', 130, 4.2),
	('SU308', 'Пътен влак', 100, 4.0),
	('REG406', 'Регионален влак', 70, 4.3),
	('EXP506', 'Експресен влак', 140, 4.7),
	('ICF606', 'Експресен влак', 125, 4.4),
	('SU708', 'Пътен влак', 100, 4.1),
	('REG809', 'Регионален влак', 70, 4.6),
	('EXP910', 'Експресен влак', 150, 4.8),
	('ICF010', 'Експресен влак', 130, 4.5),
	('EXP221', 'Експресен влак', 125, 4.2),
	('EXP204', 'Експресен влак', 140, 4.3),
	('SU304', 'Пътен влак', 80, 4.5),
	('REG706', 'Регионален влак', 70, 4.8),
	('EXP516', 'Експресен влак', 120, 4.3),
	('ICF826', 'Експресен влак', 110, 4.6),
	('SU908', 'Пътен влак', 90, 4.5),
	('REG823', 'Регионален влак', 60, 4.5),
	('EXP999', 'Експресен влак', 150, 4.9),
	('ICF123', 'Експресен влак', 120, 4.4);


	SELECT * FROM Trains;
	DELETE FROM Trains;


	CREATE TABLE Stations (
		station_id INT AUTO_INCREMENT PRIMARY KEY,
		station_name VARCHAR(100) ,
		city VARCHAR(50)
	)AUTO_INCREMENT = 5001;

	INSERT INTO Stations (station_name, city) VALUES
	('Централна гара София', 'София'),
	('Централна гара Пловдив', 'Пловдив'),#test#test#tes
	('Централна гара Варна', 'Варна'),
	('Централна гара Бургас', 'Бургас'),
	('Централна гара Русе', 'Русе'),
	('Централна гара Стара Загора', 'Стара Загора'),
	('Централна гара Плевен', 'Плевен'),
	('Централна гара Велико Търново', 'Велико Търново'),
	('Централна гара Благоевград', 'Благоевград'),
	('Централна гара Добрич', 'Добрич'),
	('Централна гара Кюстендил', 'Кюстендил'),
	('Централна гара Ловеч', 'Ловеч'),
	('Централна гара Монтана', 'Монтана'),
	('Централна гара Хасково', 'Хасково'),
	('Централна гара Шумен', 'Шумен'),
	('Централна гара Ямбол', 'Ямбол'),
	('Централна гара Кърджали', 'Кърджали'),
	('Централна гара Перник', 'Перник'),
	('Централна гара Габрово', 'Габрово');
	SELECT * FROM Stations;
    



	CREATE TABLE Routes (
		route_id INT AUTO_INCREMENT PRIMARY KEY,
		start_station VARCHAR(100) ,
		end_station VARCHAR(100) ,
		travel_date date,
		departure_time time,
		arrival_time time
		
	)AUTO_INCREMENT = 9001;



	INSERT INTO Routes (start_station, end_station,travel_date, departure_time, arrival_time) VALUES
	("Централна гара София", 'Централна гара Пловдив', '2025-02-08', '08:00:00', '10:00:00'),  -- София -> Пловдив_
	('Централна гара Пловдив', "Централна гара София", '2025-02-08', '10:30:00', '12:30:00'),  -- Пловдив -> София_
	("Централна гара София", 'Централна гара Варна', '2025-02-08', '14:00:00', '16:00:00'),  -- София -> Варна_
	('Централна гара Варна', "Централна гара София", '2025-02-08', '16:30:00', '18:30:00'),  -- Варна -> София_
	("Централна гара София", 'Централна гара Бургас', '2025-02-08', '09:00:00', '14:30:00'),  -- София -> Бургас_
	('Централна гара Бургас', "Централна гара София", '2025-02-08', '15:00:00', '20:30:00'),  -- Бургас -> София_
	("Централна гара София", 'Централна гара Русе', '2025-02-08', '10:00:00', '15:00:00'),  -- София -> Русе_
	('Централна гара Русе', "Централна гара София", '2025-02-08', '15:30:00', '20:30:00'),  -- Русе -> София_
	("Централна гара София", 'Централна гара Стара Загора', '2025-02-08', '11:00:00', '16:30:00'),  -- София -> Стара Загора_
	('Централна гара Стара Загора', "Централна гара София", '2025-02-08', '17:00:00', '21:00:00'),  -- Стара Загора -> София_
	("Централна гара София", 'Централна гара Плевен', '2025-02-08', '12:00:00', '14:30:00'),  -- София -> Плевен_
	('Централна гара Плевен', "Централна гара София", '2025-02-08', '15:00:00', '17:30:00'),  -- Плевен -> София_
	("Централна гара София", 'Централна гара Велико Търново', '2025-02-08', '13:00:00', '15:30:00'),  -- София -> Велико Търново_
	('Централна гара Велико Търново', "Централна гара София", '2025-02-08', '16:00:00', '18:30:00'),  -- Велико Търново -> София_
	("Централна гара София", 'Централна гара Благоевград', '2025-02-08', '08:00:00', '10:00:00'),  -- София -> Благоевград_
	('Централна гара Благоевград', "Централна гара София", '2025-02-08', '10:30:00', '12:30:00'),  -- Благоевград -> София_
	("Централна гара София", 'Централна гара Благоевград', '2025-02-08', '13:00:00', '15:00:00'),  -- София -> Благоевград_
	('Централна гара Благоевград', "Централна гара София", '2025-02-08', '15:30:00', '17:30:00'),  -- Благоевград -> София_
	("Централна гара София", 'Централна гара Добрич', '2025-02-08', '15:00:00', '17:30:00'), -- София -> Добрич_
	('Централна гара Добрич', "Централна гара София", '2025-02-08', '18:00:00', '20:30:00'), -- Добрич -> София_
	("Централна гара София", 'Централна гара Кюстендил', '2025-02-08', '08:00:00', '10:00:00'), -- София -> Кюстендил_
	('Централна гара Кюстендил', "Централна гара София", '2025-02-08', '10:30:00', '12:30:00'), -- Кюстендил -> София_
	("Централна гара София", 'Централна гара Кюстендил', '2025-02-08', '14:00:00', '16:00:00'), -- София -> Кюстендил_
	('Централна гара Кюстендил', "Централна гара София", '2025-02-08', '16:30:00', '18:00:00'), -- Кюстендил -> София_
	("Централна гара София", 'Централна гара Ловеч', '2025-02-08', '18:00:00', '20:30:00'), -- София -> Ловеч_
	('Централна гара Ловеч', "Централна гара София", '2025-02-08', '21:00:00', '23:30:00'), -- Ловеч -> София_
	("Централна гара София", 'Централна гара Монтана', '2025-02-08', '17:10:00', '18:40:00'), -- София -> Монтана_
	('Централна гара Монтана', "Централна гара София", '2025-02-08', '19:10:00', '20:40:00'), -- Монтана -> София_
	("Централна гара София", 'Централна гара Хасково', '2025-02-08', '12:20:00', '15:50:00'), -- София -> Хасково_
	('Централна гара Хасково', "Централна гара София", '2025-02-08', '16:20:00', '19:50:00'), -- Хасково -> София_
	("Централна гара София", 'Централна гара Шумен', '2025-02-08', '12:15:00', '16:15:00'), -- София -> Шумен_
	('Централна гара Шумен', "Централна гара София", '2025-02-08', '16:45:00', '20:45:00'), -- Шумен -> София_
	("Централна гара София", 'Централна гара Ямбол', '2025-02-08', '11:10:00', '15:10:00'), -- София -> Ямбол_
	('Централна гара Ямбол',"Централна гара София", '2025-02-08', '15:40:00', '19:40:00'), -- Ямбол -> София_
	("Централна гара София",'Централна гара Кърджали', '2025-02-08', '10:20:00', '13:50:00'), -- София -> Кърджали_
	('Централна гара Кърджали', "Централна гара София", '2025-02-08', '14:20:00', '17:50:00'), -- Кърджали -> София_
	("Централна гара София", 'Централна гара Перник', '2025-02-08', '10:00:00', '10:30:00'), -- София -> Перник_
	('Централна гара Перник', "Централна гара София", '2025-02-08', '11:00:00', '11:30:00'), -- Перник -> София_
	("Централна гара София", 'Централна гара Перник', '2025-02-08', '13:00:00', '13:30:00'), -- София -> Перник_
	('Централна гара Перник', "Централна гара София", '2025-02-08', '14:00:00', '14:30:00'), -- Перник -> София_
	("Централна гара София", 'Централна гара Габрово', '2025-02-08', '11:25:00', '14:55:00'), -- София -> Габрово
	('Централна гара Габрово', "Централна гара София", '2025-02-08', '15:25:00', '18:55:00'), -- Габрово -> София
	('Централна гара Пловдив', "Централна гара Стара Загора", '2025-02-08', '10:25:00', '11:25:00'), -- Пловдив -> Стара Загора
	('Централна гара Стара Загора', "Централна гара Пловдив", '2025-02-08', '11:55:00', '12:55:00'), -- Стара Загора -> Пловдив
	('Централна гара Пловдив', "Централна гара Стара Загора", '2025-02-08', '14:25:00', '15:25:00'), -- Пловдив -> Стара Загора
	('Централна гара Стара Загора', "Централна гара Пловдив", '2025-02-08', '15:55:00', '16:25:00'), -- Стара Загора -> Пловдив
	('Централна гара Пловдив', "Централна гара Бургас", '2025-02-08', '10:00:00', '12:30:00'), -- Пловдив -> Бургас
	('Централна гара Бургас', "Централна гара Пловдив", '2025-02-08', '13:00:00', '15:30:00'), -- Бургас -> Пловдив
	('Централна гара Пловдив', "Централна гара Русе", '2025-02-08', '09:00:00', '12:30:00'), -- Пловдив -> Русе
	('Централна гара Русе', "Централна гара Пловдив", '2025-02-08', '13:00:00', '16:30:00'), -- Русе -> Пловдив
	('Централна гара Пловдив', "Централна гара Варна", '2025-02-08', '11:00:00', '14:00:00'), -- Пловдив -> Варна
	('Централна гара Варна', "Централна гара Пловдив", '2025-02-08', '13:00:00', '16:30:00'), -- Варна -> Пловдив
	('Централна гара Варна', "Централна гара Пловдив", '2025-02-08', '13:30:00', '14:30:00'), -- Варна -> Бургас
	('Централна гара Пловдив', "Централна гара Варна", '2025-02-08', '15:00:00', '15:30:00'), -- Бургас -> Варна
	('Централна гара Варна', "Централна гара Пловдив", '2025-02-08', '16:00:00', '16:30:00'), -- Варна -> Бургас
	('Централна гара Пловдив', "Централна гара Варна", '2025-02-08', '17:00:00', '17:30:00'); -- Бургас -> Варна

	SELECT * FROM Routes;

	CREATE TABLE Train_Routes (
		train_id INT,
		route_id INT ,
		FOREIGN KEY (train_id) REFERENCES Trains(train_id), 
		FOREIGN KEY (route_id) REFERENCES Routes(route_id) 
	);


	INSERT INTO Train_Routes (train_id, route_id) VALUES 
	(1011, 9001),
	(1011, 9002),
	(1011, 9003),
	(1011, 9004),
	(1012, 9005),
	(1012, 9006),
	(1013, 9007),
	(1013, 9008),
	(1014, 9009),
	(1014, 9010),
	(1015, 9011),
	(1015, 9012),
	(1016, 9013),
	(1016, 9014),
	(1017, 9015),
	(1017, 9016),
	(1017, 9017),
	(1017, 9018),
	(1018, 9019),
	(1018, 9020),
	(1019, 9021),
	(1019, 9022),
	(1019, 9023),
	(1019, 9024),
	(1019, 9025),
	(1019, 9026),
	(1025, 9027),
	(1025, 9028),
	(1021, 9029),
	(1021, 9030),
	(1022, 9031),
	(1022, 9032),
	(1023, 9033),
	(1023, 9034),
	(1024, 9035),
	(1024, 9036),
	(1025, 9037),
	(1025, 9038),
	(1025, 9039),
	(1025, 9040),
	(1026, 9041),
	(1026, 9042),
	(1027, 9043),
	(1027, 9044),
	(1027, 9045),
	(1027, 9046),
	(1028, 9047),
	(1028, 9048),
	(1029, 9049),
	(1029, 9050),
	(1030, 9051),
	(1030, 9052),
	(1030, 9053),
	(1030, 9054),
	(1030, 9055),
	(1030, 9056);

	SELECT * FROM Train_Routes;

	 

	 
	CREATE TABLE Passengers (
		passenger_id INT AUTO_INCREMENT PRIMARY KEY,
		first_name VARCHAR(255),
		last_name VARCHAR(255)
		
	)AUTO_INCREMENT = 9001;

	INSERT INTO Passengers (first_name, last_name) VALUES
	('Иван', 'Петров'),
	('Георги', 'Иванов'),
	('Мария', 'Димитрова'),
	('Петър', 'Георгиев'),
	('Елена', 'Николова'),
	('Стоян', 'Колев'),
	('Васил', 'Михайлов'),
	('Никола', 'Петков'),
	('Христо', 'Тодоров'),
	('Стефан', 'Ангелов'),
	('Александър', 'Костов'),
	('Борислав', 'Илиев'),
	('Любомир', 'Василев'),
	('Димитър', 'Стефанов'),
	('Красимир', 'Стоянов'),
	('Милена', 'Танева'),
	('Десислава', 'Христова'),
	('Светослав', 'Маринов'),
	('Емил', 'Попов'),
	('Виктор', 'Киров'),
	('Пламен', 'Краснев'),
	('Ангел', 'Йорданов'),
	('Цветан', 'Борисов'),
	('Радостина', 'Пенева'),
	('Надежда', 'Ганчева'),
	('Илия', 'Димитров'),
	('Благовест', 'Жеков'),
	('Кристина', 'Александрова'),
	('Гергана', 'Николова'),
	('Яна', 'Младенова'),
	('Валентин', 'Валков'),
	('Златина', 'Стоева'),
	('Деница', 'Тодорова'),
	('Атанас', 'Филипов'),
	('Мирослав', 'Цветков'),
	('Станислав', 'Колев'),
	('Тихомир', 'Янчев'),
	('Мая', 'Златанова'),
	('Божидар', 'Христов'),
	('Ваня', 'Андреева'),
	('Симеон', 'Павлов'),
	('Росица', 'Боянова'),
	('Ивайло', 'Миланов'),
	('Теодор', 'Янев'),
	('Лилия', 'Петрова'),
	('Велислав', 'Горанов'),
	('Огнян', 'Серафимов'),
	('Борис', 'Йорданов'),
	('Тони', 'Георгиева'),
	('Снежана', 'Крастева'),
	('Петю', 'Димитров'),
	('Побер', 'Георгиев'),
	('Васил', 'Петров'),
	('Георги', 'Колев'),
	('Димитър', 'Михайлов'),
	('Емил', 'Тодоров'),
	('Христо', 'Ангелов'),
	('Иван', 'Костов'),
	('Красимир', 'Илиев'),
	('Любомир', 'Василев'),
	('Милена', 'Стефанова'),
	('Николай', 'Стоянов'),
	('Огнян', 'Танев'),
	('Пламен', 'Христов'),
	('Радостин', 'Маринов'),
	('Стефан', 'Попов'),
	('Светослав', 'Киров'),
	('Цветан', 'Борисов'),
	('Йордан', 'Пенев'),
	('Златина', 'Ганчева'),
	('Пешо', 'Грифина'),
	('Благовест', 'Жеков'),
	('Деница', 'Александрова'),
	('Елена', 'Николова'),
	('Гергана', 'Младенова'),
	('Илия', 'Валков'),
	('Кристина', 'Стоева'),
	('Лилия', 'Тодорова'),
	('Мая', 'Филипова'),
	('Надежда', 'Цветкова'),
	('Огнян', 'Колев'),
	('Петър', 'Янчев'),
	('Росица', 'Златанова'),
	('Станислав', 'Христов'),
	('Тихомир', 'Андреев'),
	('Теодор', 'Павлов'),
	('Ваня', 'Боянова'),
	('Велислав', 'Миланов'),
	('Божидар', 'Янев'),
	('Борис', 'Серафимов'),
	('Ангел', 'Георгиев'),
	('Тони', 'Крастева'),
	('Снежана', 'Петрова'),
	('Мирослав', 'Величков'),
	('Ивайло', 'Дойчев'),
	('Здравко', 'Господинов'),
	('Люпен', 'Танев'),
	('Петьо', 'Петьов'),
	('Силвия', 'Петрова'),
	('Цветомир', 'Ангелов'),
	('Юлиян', 'Христов');

	select * from Passengers;
show tables;
	CREATE TABLE Tickets (
		ticket_id INT AUTO_INCREMENT PRIMARY KEY,
		ticket_number VARCHAR(50) UNIQUE,
		passenger_id INT,
		train_id INT,
		train_number VARCHAR(100),
		route_id INT,
		ticket_class VARCHAR(20),
		price DECIMAL(6, 2),
		purchase_date date,
		purchase_time time,
		FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),  
		FOREIGN KEY (train_id) REFERENCES Trains(train_id),  
		FOREIGN KEY (train_number) REFERENCES Trains(train_number),
		FOREIGN KEY (route_id) REFERENCES Train_Routes(route_id)
	);
	INSERT INTO Tickets 
  (ticket_number, passenger_id, train_id, train_number, route_id, ticket_class, price, purchase_date, purchase_time) VALUES
('TCKT10001', 9001, 1001, 'EXP101', 9001, 'Първа класа', 50.00, '2025-02-07', '08:47:12'),
('TCKT10061', 9061, 1001, 'EXP101', 9001, 'Първа класа', 50.00, '2025-02-08', '06:23:45'),
('TCKT10031', 9031, 1001, 'EXP101', 9001, 'Първа класа', 50.00, '2025-02-07', '11:12:33'),
('TCKT10091', 9091, 1001, 'EXP101', 9001, 'Първа класа', 50.00, '2025-02-08', '07:05:27'),
('TCKT10002', 9002, 1002, 'EXP202', 9002, 'Втора класа', 25.00, '2025-02-07', '09:15:42'),
('TCKT10062', 9062, 1002, 'EXP202', 9002, 'Втора класа', 25.00, '2025-02-07', '18:58:10'),
('TCKT10032', 9032, 1002, 'EXP202', 9002, 'Втора класа', 25.00, '2025-02-07', '12:03:55'),
('TCKT10092', 9092, 1002, 'EXP202', 9002, 'Втора класа', 25.00, '2025-02-08', '07:42:19'),
('TCKT10003', 9003, 1003, 'SU303', 9003, 'Трета класа', 15.00, '2025-02-07', '10:27:36'),
('TCKT10063', 9063, 1003, 'SU303', 9003, 'Трета класа', 15.00, '2025-02-08', '06:32:05'),
('TCKT10033', 9033, 1003, 'SU303', 9003, 'Трета класа', 15.00, '2025-02-07', '14:05:12'),
('TCKT10093', 9093, 1003, 'SU303', 9003, 'Трета класа', 15.00, '2025-02-08', '08:55:47'),
('TCKT10004', 9004, 1004, 'REG404', 9004, 'Първа класа', 45.00, '2025-02-07', '15:03:21'),
('TCKT10064', 9064, 1004, 'REG404', 9004, 'Първа класа', 45.00, '2025-02-08', '06:44:10'),
('TCKT10034', 9034, 1004, 'REG404', 9004, 'Първа класа', 45.00, '2025-02-07', '18:22:33'),
('TCKT10094', 9094, 1004, 'REG404', 9004, 'Първа класа', 45.00, '2025-02-07', '15:12:05'),
('TCKT10005', 9005, 1005, 'EXP505', 9005, 'Втора класа', 20.00, '2025-02-07', '12:34:56'),
('TCKT10065', 9065, 1005, 'EXP505', 9005, 'Втора класа', 20.00, '2025-02-08', '06:07:49'),
('TCKT10035', 9035, 1005, 'EXP505', 9005, 'Втора класа', 20.00, '2025-02-07', '17:45:00'),
('TCKT10095', 9095, 1005, 'EXP505', 9005, 'Втора класа', 20.00, '2025-02-08', '07:29:11'),
('TCKT10006', 9006, 1006, 'EXP706', 9006, 'Трета класа', 10.00, '2025-02-07', '08:03:37'),
('TCKT10066', 9066, 1006, 'EXP706', 9006, 'Трета класа', 10.00, '2025-02-08', '08:59:59'),
('TCKT10036', 9036, 1006, 'EXP706', 9006, 'Трета класа', 10.00, '2025-02-07', '19:58:14'),
('TCKT10096', 9096, 1006, 'EXP706', 9006, 'Трета класа', 10.00, '2025-02-08', '07:11:23'),
('TCKT10007', 9007, 1007, 'SU707', 9007, 'Първа класа', 50.00, '2025-02-07', '10:47:55'),
('TCKT10067', 9067, 1007, 'SU707', 9007, 'Първа класа', 50.00, '2025-02-07', '17:59:01'),
('TCKT10037', 9037, 1007, 'SU707', 9007, 'Първа класа', 50.00, '2025-02-07', '16:32:22'),
('TCKT10097', 9097, 1007, 'SU707', 9007, 'Първа класа', 50.00, '2025-02-07', '16:51:40'),
('TCKT10008', 9008, 1008, 'REG808', 9008, 'Втора класа', 25.00, '2025-02-07', '13:05:17'),
('TCKT10068', 9068, 1008, 'REG808', 9008, 'Втора класа', 25.00, '2025-02-08', '08:59:12'),
('TCKT10038', 9038, 1008, 'REG808', 9008, 'Втора класа', 25.00, '2025-02-07', '18:45:03'),
('TCKT10098', 9098, 1008, 'REG808', 9008, 'Втора класа', 25.00, '2025-02-08', '06:23:55'),
('TCKT10009', 9009, 1009, 'EXP909', 9009, 'Трета класа', 15.00, '2025-02-07', '19:12:47'),
('TCKT10069', 9069, 1009, 'EXP909', 9009, 'Трета класа', 15.00, '2025-02-08', '06:38:21'),
('TCKT10039', 9039, 1009, 'EXP909', 9009, 'Трета класа', 15.00, '2025-02-07', '11:29:33'),
('TCKT10099', 9099, 1009, 'EXP909', 9009, 'Трета класа', 15.00, '2025-02-08', '08:07:55'),
('TCKT10010', 9010, 1010, 'EXP012', 9010, 'Първа класа', 45.00, '2025-02-07', '14:03:12'),
('TCKT10070', 9070, 1010, 'EXP012', 9010, 'Първа класа', 45.00, '2025-02-07', '13:03:55'),
('TCKT10040', 9040, 1010, 'EXP012', 9010, 'Първа класа', 45.00, '2025-02-07', '09:55:10'),
('TCKT10100', 9100, 1010, 'EXP012', 9010, 'Първа класа', 45.00, '2025-02-08', '06:27:44'),
('TCKT10011', 9011, 1011, 'EXP121', 9011, 'Втора класа', 20.00, '2025-02-07', '10:22:17'),
('TCKT10071', 9071, 1011, 'EXP121', 9011, 'Втора класа', 20.00, '2025-02-08', '07:47:03'),
('TCKT10041', 9041, 1011, 'EXP121', 9011, 'Втора класа', 20.00, '2025-02-07', '12:35:29'),
('TCKT10101', 9101, 1011, 'EXP121', 9011, 'Втора класа', 20.00, '2025-02-08', '06:12:55'),
('TCKT10012', 9012, 1012, 'EXP203', 9012, 'Трета класа', 10.00, '2025-02-07', '11:23:11'),
('TCKT10072', 9072, 1012, 'EXP203', 9012, 'Трета класа', 10.00, '2025-02-08', '08:45:00'),
('TCKT10042', 9042, 1012, 'EXP203', 9012, 'Трета класа', 10.00, '2025-02-07', '16:15:07'),
('TCKT10013', 9013, 1013, 'SU308', 9013, 'Първа класа', 50.00, '2025-02-07', '09:56:03'),
('TCKT10073', 9073, 1013, 'SU308', 9013, 'Първа класа', 50.00, '2025-02-08', '08:12:34'),
('TCKT10043', 9043, 1013, 'SU308', 9013, 'Първа класа', 50.00, '2025-02-07', '13:40:20'),
('TCKT10014', 9014, 1014, 'REG406', 9014, 'Втора класа', 25.00, '2025-02-07', '12:01:45'),
('TCKT10074', 9074, 1014, 'REG406', 9014, 'Втора класа', 25.00, '2025-02-08', '07:09:30'),
('TCKT10044', 9044, 1014, 'REG406', 9014, 'Втора класа', 25.00, '2025-02-07', '17:47:02'),
('TCKT10015', 9015, 1015, 'EXP506', 9015, 'Трета класа', 15.00, '2025-02-07', '14:27:54'),
('TCKT10075', 9075, 1015, 'EXP506', 9015, 'Трета класа', 15.00, '2025-02-08', '08:59:30'),
('TCKT10045', 9045, 1015, 'EXP506', 9015, 'Трета класа', 15.00, '2025-02-07', '19:32:10'),
('TCKT10016', 9016, 1016, 'ICF606', 9016, 'Първа класа', 45.00, '2025-02-07', '15:42:33'),
('TCKT10076', 9076, 1016, 'ICF606', 9016, 'Първа класа', 45.00, '2025-02-07', '14:33:11'),
('TCKT10046', 9046, 1016, 'ICF606', 9016, 'Първа класа', 45.00, '2025-02-07', '18:05:45'),
('TCKT10017', 9017, 1017, 'SU708', 9017, 'Втора класа', 20.00, '2025-02-07', '10:55:12'),
('TCKT10077', 9077, 1017, 'SU708', 9017, 'Втора класа', 20.00, '2025-02-08', '06:47:09'),
('TCKT10047', 9047, 1017, 'SU708', 9017, 'Втора класа', 20.00, '2025-02-07', '13:21:38'),
('TCKT10018', 9018, 1018, 'REG809', 9018, 'Трета класа', 10.00, '2025-02-07', '16:44:55'),
('TCKT10078', 9078, 1018, 'REG809', 9018, 'Трета класа', 10.00, '2025-02-08', '06:08:34'),
('TCKT10048', 9048, 1018, 'REG809', 9018, 'Трета класа', 10.00, '2025-02-07', '11:09:17'),
('TCKT10019', 9019, 1019, 'EXP910', 9019, 'Първа класа', 50.00, '2025-02-07', '09:33:12'),
('TCKT10079', 9079, 1019, 'EXP910', 9019, 'Първа класа', 50.00, '2025-02-08', '08:03:47'),
('TCKT10049', 9049, 1019, 'EXP910', 9019, 'Първа класа', 50.00, '2025-02-07', '14:52:10'),
('TCKT10020', 9020, 1020, 'ICF010', 9020, 'Втора класа', 25.00, '2025-02-07', '12:43:21'),
('TCKT10080', 9080, 1020, 'ICF010', 9020, 'Втора класа', 25.00, '2025-02-08', '06:39:05'),
('TCKT10050', 9050, 1020, 'ICF010', 9020, 'Втора класа', 25.00, '2025-02-07', '18:07:53'),
('TCKT10021', 9021, 1021, 'EXP221', 9021, 'Трета класа', 15.00, '2025-02-07', '11:17:46'),
('TCKT10081', 9081, 1021, 'EXP221', 9021, 'Трета класа', 15.00, '2025-02-08', '07:55:28'),
('TCKT10051', 9051, 1021, 'EXP221', 9021, 'Трета класа', 15.00, '2025-02-07', '17:34:09'),
('TCKT10022', 9022, 1022, 'EXP204', 9022, 'Първа класа', 45.00, '2025-02-07', '09:48:55'),
('TCKT10082', 9082, 1022, 'EXP204', 9022, 'Първа класа', 45.00, '2025-02-07', '16:21:37'),
('TCKT10052', 9052, 1022, 'EXP204', 9022, 'Първа класа', 45.00, '2025-02-07', '15:09:03'),
('TCKT10023', 9023, 1023, 'SU304', 9023, 'Втора класа', 20.00, '2025-02-07', '14:35:21'),
('TCKT10083', 9083, 1023, 'SU304', 9023, 'Втора класа', 20.00, '2025-02-08', '07:06:42'),
('TCKT10053', 9053, 1023, 'SU304', 9023, 'Втора класа', 20.00, '2025-02-07', '10:27:33'),
('TCKT10024', 9024, 1024, 'REG706', 9024, 'Трета класа', 10.00, '2025-02-07', '16:02:47'),
('TCKT10084', 9084, 1024, 'REG706', 9024, 'Трета класа', 10.00, '2025-02-08', '06:54:11'),
('TCKT10054', 9054, 1024, 'REG706', 9024, 'Трета класа', 10.00, '2025-02-07', '11:45:28'),
('TCKT10025', 9025, 1025, 'EXP516', 9025, 'Първа класа', 50.00, '2025-02-07', '08:39:22'),
('TCKT10085', 9085, 1025, 'EXP516', 9025, 'Първа класа', 50.00, '2025-02-08', '06:06:03'),
('TCKT10055', 9055, 1025, 'EXP516', 9025, 'Първа класа', 50.00, '2025-02-07', '19:28:14'),
('TCKT10026', 9026, 1026, 'ICF826', 9026, 'Втора класа', 25.00, '2025-02-07', '13:17:04'),
('TCKT10086', 9086, 1026, 'ICF826', 9026, 'Втора класа', 25.00, '2025-02-08', '08:03:33'),
('TCKT10056', 9056, 1026, 'ICF826', 9026, 'Втора класа', 25.00, '2025-02-07', '17:56:21'),
('TCKT10027', 9027, 1027, 'SU908', 9027, 'Трета класа', 15.00, '2025-02-07', '09:07:45'),
('TCKT10087', 9087, 1027, 'SU908', 9027, 'Трета класа', 15.00, '2025-02-08', '06:33:27'),
('TCKT10057', 9057, 1027, 'SU908', 9027, 'Трета класа', 15.00, '2025-02-07', '14:52:38'),
('TCKT10028', 9028, 1028, 'REG823', 9028, 'Първа класа', 45.00, '2025-02-07', '10:23:11'),
('TCKT10088', 9088, 1028, 'REG823', 9028, 'Първа класа', 45.00, '2025-02-08', '07:19:52'),
('TCKT10058', 9058, 1028, 'REG823', 9028, 'Първа класа', 45.00, '2025-02-07', '18:11:05'),
('TCKT10029', 9029, 1029, 'EXP999', 9029, 'Втора класа', 20.00, '2025-02-07', '11:07:53'),
('TCKT10089', 9089, 1029, 'EXP999', 9029, 'Втора класа', 20.00, '2025-02-08', '06:12:44'),
('TCKT10059', 9059, 1029, 'EXP999', 9029, 'Втора класа', 20.00, '2025-02-07', '15:48:20'),
('TCKT10030', 9030, 1030, 'ICF123', 9030, 'Трета класа', 10.00, '2025-02-07', '08:52:37'),
('TCKT10090', 9090, 1030, 'ICF123', 9030, 'Трета класа', 10.00, '2025-02-08', '07:40:05'),
('TCKT10060', 9060, 1030, 'ICF123', 9030, 'Трета класа', 10.00, '2025-02-07', '19:03:12');








	Select*from Tickets;
	DESCRIBE Trains;
    
    
    
    
    
    
SELECT train_type, COUNT(*) AS high_rating_count
FROM Trains
WHERE rating > 4.2
GROUP BY train_type;


SELECT * 
FROM Routes 
WHERE start_station = 'Централна гара София'
ORDER BY travel_date, departure_time;

SELECT start_station, end_station, departure_time, arrival_time
FROM Routes 
WHERE TIMESTAMPDIFF(HOUR, departure_time, arrival_time) > 3;

SELECT start_station, end_station, departure_time, arrival_time
FROM Routes 
WHERE TIMESTAMPDIFF(HOUR, departure_time, arrival_time) < 1.5;


SELECT 
    start_station, 
    end_station, 
    travel_date, 
    departure_time, 
    arrival_time
FROM Routes
WHERE start_station = 'Централна гара София'
  AND arrival_time > '18:00:00'
ORDER BY travel_date, departure_time;


SELECT 
    end_station, 
    COUNT(*) AS route_count
FROM Routes
WHERE start_station = 'Централна гара София'
GROUP BY end_station;

SELECT 
    start_station, 
    end_station, 
    travel_date, 
    departure_time, 
    arrival_time
FROM Routes
WHERE start_station = 'Централна гара София'
  AND travel_date = '2025-02-08'
  AND departure_time = (
      SELECT MIN(departure_time)
      FROM Routes
      WHERE start_station = 'Централна гара София'
        AND travel_date = '2025-02-08'
  );


SELECT 
    start_station, 
    end_station, 
    travel_date, 
    departure_time, 
    arrival_time
FROM Routes
WHERE start_station = 'Централна гара София'
  AND travel_date = '2025-02-08'
  AND departure_time = (
      SELECT MAX(departure_time)
      FROM Routes
      WHERE start_station = 'Централна гара София'
        AND travel_date = '2025-02-08'
  );
  
  
SELECT 
    start_station, 
    end_station, 
    travel_date, 
    departure_time, 
    arrival_time
FROM Routes
WHERE end_station = 'Централна гара София'
  AND travel_date = '2025-02-08'
  AND arrival_time = (
      SELECT MAX(arrival_time)
      FROM Routes
      WHERE end_station = 'Централна гара София'
        AND travel_date = '2025-02-08'
  )

UNION
SELECT 
    start_station, 
    end_station, 
    travel_date, 
    departure_time, 
    arrival_time
FROM (
    SELECT 
        start_station, 
        end_station, 
        travel_date, 
        departure_time, 
        arrival_time
    FROM Routes
    WHERE end_station = 'Централна гара Пловдив'
      AND travel_date = '2025-02-08'
      AND arrival_time = (
          SELECT MAX(arrival_time)
          FROM Routes
          WHERE end_station = 'Централна гара Пловдив'
            AND travel_date = '2025-02-08'
      )
    LIMIT 1
) AS Plovdiv_Limit
 
UNION
SELECT 
    start_station, 
    end_station, 
    travel_date, 
    departure_time, 
    arrival_time
FROM Routes
WHERE end_station = 'Централна гара Варна'
  AND travel_date = '2025-02-08'
  AND arrival_time = (
      SELECT MAX(arrival_time)
      FROM Routes
      WHERE end_station = 'Централна гара Варна'
        AND travel_date = '2025-02-08'
  );