--ex 1
create function increment(num int) returns int as
    $$
    BEGIN
    return num+1;
    End;
    $$
    language plpgsql;
select increment(2);

create function sum(num int, num2 int) returns int as
    $$
    BEGIN
    return num+num2;
    End;
    $$
    language plpgsql;
select sum(2,3);

create function TF(num int) returns bool as
    $$
    declare
    BEGIN
        if (mod(num,2))= 0 then return true;
        else return false;
        end if;
    end;
    $$
language plpgsql;
drop function TF(num int);
select TF(0);
create table password(
    password varchar(20),
    len int
);
insert into password values ('asdhfsjbfd', length(password.password));
create function Validation(pass varchar) returns varchar(10) as
    $$
    begin
    if (length(pass)>=6) then return 'Passed';
    else return 'Failed';
    end if ;
    end;
    $$
language plpgsql;
select validation('sadas');

create function twoin1(num int,out n int,out nn int) as
$$
    begin
        n := num*2;
        nn := num+3;
    end;
    $$
language plpgsql;
drop function twoin1(num int, n int, nn int);
select twoin1(5);



--ex2
--a.Return timestamp of the occured action within the database.
--b.Computes the age of a person when persons’ date of birth is inserted.
--c.Adds 12% tax on the price of the inserted item.
--d.Prevents deletion of any row from only one table.
--e.Launches functions  1.d and 1.e.
create table di(
    name varchar(20),
    date timestamp
);

create or replace function Last_Change() returns trigger
    language plpgsql
    as
$$
    begin
        if new.name <> old.name then
            update di set date = now()
            where name=new.name;
        else update di set date = now()
            where date is null;
        end if;
        return new;
    end;
    $$;
create trigger LC
    after insert or update on di
    for each row
    execute procedure Last_Change();

insert into di values ('dias',now());
update di set name='Drow' where name='Dawn';
select * from di;
create table getAge(
    dateofbirth year,
    age int
    );

create table p(
    objname varchar(20),
    price decimal(10,2)
);
create or replace function Addtax() returns trigger
language plpgsql as
    $$
    begin
        update p set price=(price*0.12)+price
        where price is not null ;
        return new;
    end;
    $$;
create trigger Add
    after insert on p
    for each row
    execute procedure Addtax();
insert into p values ('House',12000);
select * from p;
--ex 3
--Procedures are basic PL SQL blocks to perform a specific action.
--Functions are blocks used mainly to perform the computations.
--A function is used to calculate result using given inputs.
--A procedure is used to perform certain task in order.
--A function can be called by a procedure. A procedure cannot be called by a function.

--ex 4
create table worker(
    id int,
    name varchar,
    date_of_birt date,
    age int,
    salary int,
    workexp int,
    discount int
);
