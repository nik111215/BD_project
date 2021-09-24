---CRUD запросы
select *
from staff;

insert into staff(id_staff, id_gas_station, name, surname, position, salary) VALUES (197, 1, 'Константин', 'Маров', 'старший оператор АЗС', 57980 );

update  staff
    set salary = 55000
    where  id_staff = 223;

delete
from staff
where salary < 25000;




select *
from client;

insert into client(id_client, name, surname, contact_email, number_vehicles) VALUES (10035, 'Прокофий', 'Аксёнов', 'prokak@rambler.com', 3);

update client
    set contact_email = 'andrtok@inbox.com'
    where id_client = 10050;

delete
from client
where number_vehicles > 5;

