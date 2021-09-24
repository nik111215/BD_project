insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (2, 'Росгаз', 20, 323, 228);
insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (1, 'Оптик', 25, 23, 123);
insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (23, 'Салют', 8 , 345, 123);
insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (11, 'Радуга', 12 , 980, 998);
insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (7, 'Мосгаз', 15 , 678, 345);
insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (4, 'Звезда', 25 , 456, 789);
insert into gas_station(id_gas_station, title, number_employers, size_to_92, size_to_95) VALUES (9, 'Трасса', 30 , 789, 567);


insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('Роснефть', 1, 33.12, 36.23);
insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('Лукойл', 2, 32.12, 35.23);
insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('Татнефть', 23, 34.12, 37.30);
insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('Роснефть', 11, 33.12, 36.23);
insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('ТНК', 9, 34.12, 35.23);
insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('Роснефть', 4, 33.12, 36.23);
insert into tank_farm(title, id_gas_station, price_base_to_92, price_base_to_95) VALUES ('Башнефть', 7, 38.12, 39.23);

insert into price_list(id_gas_station, price_to_92, price_to_95) VALUES (2, 48.97, 51.22);
insert into price_list(id_gas_station, price_to_92, price_to_95) VALUES (1, 47.23, 49.12);
insert into price_list(id_gas_station, price_to_92, price_to_95) VALUES (23, 47.93, 49.26);
insert into price_list(id_gas_station, price_to_92, price_to_95) VALUES (11, 50.01, 53.22);
insert into price_list(id_gas_station, price_to_92, price_to_95) values (7, 48.23, 50.15);
insert into price_list(id_gas_station, price_to_92, price_to_95) values (4, 48.27, 49.15);
insert into price_list(id_gas_station, price_to_92, price_to_95) values (9, 47.23, 50.95);

insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (223, 2, 'Владимир', 'Павлюченков', 'старший оператор АЗС', 38000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (211, 2, 'Иван', 'Дмитриев', 'младший оператор АЗС', 15000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (234, 2, 'Елена', 'Перович', 'администратор', 50000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (247, 2, 'Виталия', 'Страхова', 'младший оператор АЗС', 18000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (123, 1, 'Иван', 'Карпенко', 'старший оператор АЗС', 42000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (111, 1, 'Максим', 'Мамаев', 'младший оператор АЗС', 12000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (443, 4, 'Вадим', 'Мамаев', 'старший оператор АЗС', 57000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (423, 4, 'Андрей', 'Чеканов', 'уборщик', 10000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (415, 4, 'Илья', 'Карпов', 'младший оператор АЗС', 19550);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (167, 1, 'Станислава', 'Павловская', 'администратор', 69900);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (255, 2, 'Анна', 'Кубанцева', 'старший оператор АЗС', 58912);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (923, 9, 'Роман', 'Назаркин', 'младший оператор АЗС', 22000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (905, 9, 'Полина', 'Назарова', 'администратор', 72300);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (995, 9, 'Артём', 'Перешивко', 'младший оператор АЗС', 21000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (755, 7, 'Иван', 'Яковлев', 'старший оператор АЗС', 49590);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (765, 7, 'Алексей', 'Соколов', 'младший оператор АЗС', 22450);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (733, 7, 'Никита', 'Бородавко', 'уборщик', 14570);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (1126, 11, 'Карим', 'Гатаулин', 'старший оператор АЗС', 57732);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (1167, 11, 'Лев', 'Ювенский', 'уборщик', 14450);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (2378, 23, 'Варвара', 'Холевенкова', 'младший оператор АЗС', 25000);
insert into staff(id_staff, id_gas_station, name, surname, position, salary)  values (2356, 23, 'Арсений', 'Проводов', 'старший оператор АЗС', 54000);


insert into best_staff(id_staff, prize) VALUES (234, 55500);
insert into best_staff(id_staff, prize) VALUES (1126, 45020);
insert into best_staff(id_staff, prize) VALUES (111, 28345);
insert into best_staff(id_staff, prize) VALUES (733, 20000);
insert into best_staff(id_staff, prize) VALUES (2356, 53000);

insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10010, 'Павел', 'Костнов','qwerty@box.com', 5);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10012, 'Татьяна', 'Полищук','polyshtat@box.com', 1);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10015, 'Андрей', 'Старостин','staran@box.com', 2);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10019, 'Александр', 'Рудюк','rydyakaleks@box.com', 1);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10021, 'Дарья', 'Серышева','serdaray@box.com', 4);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10025, 'Алгуль', 'Алдаг','aldagagyl@box.com', 2);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10027, 'Сергей', 'Гоппен','ggopenser@box.com', 6);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10050, 'Андрей', 'Томак','tomakandrey@box.com', 1);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10045, 'Андрей', 'Широков','shirokiy@box.com', 4);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10076, 'Ярослав', 'Фёдоров','fedorovyar@box.com', 3);
insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10098, 'Георгий', 'Карпов','karp@box.com', 7);

insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (223, 2, 10098, 15900, '95', 100);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (2378, 23, 10098, 5900, '92', 90);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (123, 1, 10010, 1000, '95', 20);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (123, 1, 10012, 2500, '92', 50);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (755, 7, 10019, 900, '95', 10);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (415, 4, 10015, 4648, '95', 88);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (905, 9, 10025, 2500, '95', 500);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (223, 2, 10076, 500, '92', 8);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (1126, 11, 10027, 1500, '95', 25);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (234, 2, 10050, 900, '95', 15);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (234, 2, 10098, 6558, '92', 120);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (755, 7, 10021, 1900, '95', 37);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (923, 9, 10012, 2900, '95', 55);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (1126, 11, 10098, 300, '92', 5);
insert into receipt(id_staff, id_gas_station, id_client, total_amount, type_of_fuel, quantity_fuel) VALUES (2378, 23, 10021, 750, '92', 15);

