create schema if not exists
    project_BD;

--drop table public.department;
--drop table public.organization;
--drop view v_teacher_wo_org;
--drop view v_teacher;
--drop table public.teacher;

set search_path = project_BD, public;

drop table gas_station;

create table  if not exists
    gas_station(
        gas_station_id          integer         NOT NULL,
        director                varchar(255)     NOT NULL,
        price_to_92             numeric(5, 2)   NOT NULL,
        price_to_95             numeric(5, 2)   NOT NULL,
        price_to_98             numeric(5, 2)   NOT NULL,
        price_to_diesel_fuel    numeric(5, 2)   NOT NULL,
        price_to_gas            numeric(5, 2)   NOT NULL
);

drop table personal;

create table if not exists
    personal(
        personal_size           integer         NOT NULL,
        phone_number            varchar(255)     UNIQUE,
        data_contract           varchar(255)     NOT NULL,
        contact_data_name       varchar(255)     NOT NULL,
        contact_data_surname    varchar(255)    NOT NULL
);

drop table oil_company;

create table if not exists
    oil_company(
        company_name            varchar(255)     NOT NULL  UNIQUE,
        annual_income           integer         NOT NULL,
        employee_size           integer         NOT NULL,
        annual_oil_turnover     integer         NOT NULL

);

drop table cheque;

create  table if not exists
    cheque(
        final_score             integer,
        column_number           integer         NOT NULL,
        estimation              integer,
        payment_type            varchar(255)     NOT NULL
);

drop table client;

create table if not exists
    client(
        id_client                               integer         NOT NULL UNIQUE,
        pol                                     varchar(255)    NOT NULL,
        is_it_vip_client                        bool            NOT NULL,
        discount_percentage_for_vip_client      numeric(3,2),
        card_number                             integer
);

insert into client(id_client, pol, is_it_vip_client, discount_percentage_for_vip_client, card_number)
    values (1, 'male', true, 0.1, 123465093),
           (13, 'female', false, Null, Null),
           (234, 'male', true, 0.05, 233557436),
           (134, 'female', false, Null, Null),
           (456, 'male', true, 0.2, 324556212);

insert into cheque(final_score, column_number, estimation, payment_type)
    values (10000, 1, 2, 'card'),
           (28765, 2, 4, 'cash'),
           (39564, 8, 5, 'card'),
           (98734, 12, 4, 'card'),
           (983, 5, 3, 'cash');

insert into oil_company(company_name, annual_income, employee_size, annual_oil_turnover)
    values  ('Змей горыныч', 238126, 248, 3649823),
           ('Pitstop', 238126, 50, 9823),
           ('ТРАНССИББУР', 238126, 500, 649823),
           ('Turbo', 381126, 69, 14823),
           ('RJHX', 9138126, 123, 4649823);

insert into  personal(personal_size, phone_number, data_contract, contact_data_name, contact_data_surname)
    values (123, '88005553535', '01.02.2010', 'Гжегож', 'Крусальски'),
           (123, '89124327895', '04.06.2019', 'Нестер', 'Игнатьев'),
           (123, '89123456758', '11.09.2021', 'Ками', 'Ургант'),
           (123, '81238471934', '21.01.2000', 'Валера', 'Морозов'),
           (123, '89237573968', '01.12.2018', 'Кирилл', 'Куркин');

insert into gas_station(gas_station_id, director, price_to_92, price_to_95, price_to_98, price_to_diesel_fuel, price_to_gas)
    values  (12, 'Шерков Влад', 42.5, 46.87, 55.12, 48.29, 22.13),
            (1, 'Крикина Алина ', 43.5, 46.89, 56.12, 47.99, 23.53),
            (32, 'Ульянов Григорий', 41.5, 44.87, 51.12, 46.29, 20.13),
            (52, 'Лузин Павел', 47.5, 49.87, 59.12, 53.29, 25.13),
            (12, 'Шерков Влад', 44.57, 47.09, 54.43, 51.71, 23.93);

select *
    from client as c
where c.is_it_vip_client = true
    order by  c.discount_percentage_for_vip_client desc;

select g.director
    from gas_station as g
where g.price_to_diesel_fuel between 46 and 50;

select *
    from oil_company as o
where
    lower(o.company_name) like '%o%';

select sum(c.final_score), c.payment_type
    from cheque as c
group by  c.payment_type;

select *
from oil_company as o
where o.employee_size > 60
order by  o.annual_oil_turnover desc;
