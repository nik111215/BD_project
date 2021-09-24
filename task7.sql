--view для таблицы tank_farm

create or replace view tank_farm_view   as
    select
        'Название нефтебазы: ' || title as title,
        'id азс, куда поставляется топливо с этой нефтебазы: ' || id_gas_station as id,
        'Цена 92 бензина на нефтебазе: ' || price_base_to_95 as price_to_95,
        'Цена 95 бензина на нефтебазе: ' || price_base_to_92 as price_to_92
    from tank_farm;

select *
from tank_farm_view;

--view для таблицы gas_station

create or replace view gas_station_view as
    select
        'id азс: ' || id_gas_station as id,
        'Название АЗС' || title as title,
        'Количество сотрудников  на АЗС' || number_employers as size,
        'Количество 92 бензина на АЗС' || size_to_92 as size_to_92,
        'Количество 95 бензина на АЗС' || size_to_95 as size_to_95
    from gas_station;


select *
from gas_station_view;

--view для таблицы price_list

create  or replace view price_list_view as
    select
        'id азс: ' || id_gas_station as id,
        'Цена 92 бензина на нефтебазе: ' || price_to_95 as price_to_95,
        'Цена 95 бензина на нефтебазе: ' || price_to_92 as price_to_92
    from price_list;

select *
from price_list_view;


--view для таблицы best_staff
create or replace view best_staff_view as
    select
        'id лучшего работника: ' || id_staff as id_staff,
        'Премия лучшего работника: ' || prize as prize
    from best_staff;

select *
from best_staff_view;

--view для таблицы staff
create or replace view staff_view as
    select
        'id сотрудника: ' || id_staff as id_staff,
        'id заправки, где работает сотрудник: ' || id_gas_station as id_gas_station,
        'Имя сотрудника: ' || name as name,
        'Фамилия сотрудника: ' || surname as surname,
        'Должность сотрудника: ' || position as position,
        'Зарплата сотрудника: ' || salary as salary

    from staff;

select *
from staff_view;

--view для таблицы client
create  or replace view client_view as
    select
        'id клиента: ' || id_client as id_client,
        'Имя клиента: ' || name as name,
        'Фамилия клиента: ' || surname as surname,
        'Количество транспортных средств у клиента: ' || number_vehicles as number_car
    from client;

select *
from client_view;

--view для таблицы receipt
create or replace view receipt_view as
    select
        'id сотрудника: ' || id_staff as id_staff,
        'id АЗС: ' || id_gas_station as id_gas_station,
        'id клиента: ' || id_client as id_client,
        'Итоговая сумма: ' || total_amount as total_amount,
        'Тип топлива: ' || type_of_fuel as type_of_fuel,
        'Количество топлива(в литрах): ' || quantity_fuel as quantity_fuel
    from receipt;

select *
from receipt_view;
