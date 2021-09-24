--view с join для таблиц
create  or replace view staff_client_view as
    select
        'Имя сотрудника АЗС: ' || s.name as name_staff,
        'Фамилия сотрудника АЗС: ' || s.surname as surname_staff,
        'Должность сотрудника АЗС: ' || s.position as position_staff,
        'Название АЗС: ' || g.title as title_gas_station,
        'Имя клиента АЗС: ' || c.name as name_client,
        'Фамилия клиента Азс: ' || c.surname as surname_client,
        'Итоговая сумма клиента: ' || r.total_amount as total_amount
    from staff as s
        inner join receipt r
            on s.id_staff = r.id_staff
        inner join client c
            on r.id_client = c.id_client
        inner join gas_station g
            on r.id_gas_station = g.id_gas_station;

select *
from staff_client_view;


--view с join для таблиц
create or replace view gas_prise_view as
    select
         'Название АЗС: ' ||  g.title as title_gas_station,
         'Количество сотрудников на АЗС: ' || g.number_employers as size_staff,
         'Количество 92 бензина' || g.size_to_92 as size_92,
         'Цена 92 бензина' || pl.price_to_92 as price_92,
         'Количество 95 бензина' || g.size_to_95 as size_95,
         'Цена 95 бензина' || pl.price_to_95 as price_95
    from gas_station g
        inner join price_list pl
            on g.id_gas_station = pl.id_gas_station;

select *
from gas_prise_view;
