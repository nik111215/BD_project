--- 5 смысловых запросов

-- итоговая цена и итоговое количество топлива купленное каждым из клиентов
select  c.name, c.surname, c.contact_email,  c.number_vehicles, sum(r.total_amount) as total_summ,sum(r.quantity_fuel) as total_fuel
from client as c
    inner join receipt r
        on c.id_client = r.id_client
    group by c.id_client;


-- нахождение сотрудниуков, которым была выплачена премия
select s.name, s.surname, s.position, s.salary, bs.prize, (s.salary + bs.prize) as all_salary
from best_staff as bs
    left join staff s
        on bs.id_staff = s.id_staff;


-- данные о продажах каждого из сотрудников
select *
from staff as s
    left join receipt r
        on s.id_staff = r.id_staff;


-- сводная таблица цен на каждой из заправок
select gs.id_gas_station, title, number_employers, size_to_92,size_to_95, price_to_92, price_to_95
from gas_station as gs
    left join price_list pl
        on gs.id_gas_station = pl.id_gas_station;

-- сводная таблица для сверки цен на топливо на азс и на нефтебазах
select g.title as gas_title, tf.title as tank_title, price_to_92,price_base_to_92,price_to_95, price_base_to_95,number_employers, size_to_92, size_to_95
from (select gs.id_gas_station, title, number_employers, size_to_92,size_to_95, price_to_92, price_to_95
from gas_station as gs
    left join price_list pl
        on gs.id_gas_station = pl.id_gas_station) as g
    left join tank_farm tf
        on g.id_gas_station = tf.id_gas_station;


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
