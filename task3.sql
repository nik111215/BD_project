create schema if not exists
    gas;



set search_path = gas, public;

drop table best_staff;
drop table price_list;
drop table tank_farm;
drop table receipt;
drop table staff;
drop table client;
drop table gas_station;


create table  if not exists gas_station(
        id_gas_station      integer         not null  primary key,
        title               varchar(255)    not null,
        number_employers    integer         not null check (number_employers > 0),
        size_to_92          integer,
        size_to_95          integer
);

create table if not exists  price_list(
    id_gas_station  integer     not null references gas.gas_station(id_gas_station) on delete cascade,
    price_to_92     float8       not null check ( price_to_92 > 0 ),
    price_to_95     float8       not null check ( price_to_95 > 0 )
);

create table if not exists tank_farm(
    title               varchar(255)    not null,
    id_gas_station      integer not null  references gas.gas_station(id_gas_station) on delete cascade,
    price_base_to_92    double precision,
    price_base_to_95    double precision
);

create table if not exists staff(
    id_staff        integer         not null primary key,
    id_gas_station  integer         not null references gas.gas_station(id_gas_station) on delete cascade,
    name            varchar(255)    not null,
    surname         varchar(255)    not null,
    position        varchar(255)    not null,
    salary          double precision    not null
);

create table if not exists best_staff(
    id_staff    integer     not null references gas.staff(id_staff) on delete cascade,
    prize       float8      not null check ( prize > 0 )
);

create table if not exists client(
    id_client       integer         not null primary key ,
    name            varchar(255)    not null,
    surname         varchar(255)    not null,
    contact_email   varchar(255)    not null ,
    number_vehicles integer         not null
);

create table if not exists receipt(
    id_staff            integer      not null references gas.staff(id_staff) on delete cascade,
    id_gas_station      integer      not null references gas.gas_station(id_gas_station) on delete cascade,
    id_client           integer      not null references gas.client(id_client) on delete cascade,
    total_amount        float8       not null check ( total_amount > 0 ),
    type_of_fuel        varchar(255) not null ,
    quantity_fuel       float8       not null
);
