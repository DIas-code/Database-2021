-- 1
--Large objects (photos, videos, CAD files, etc.) are stored as a large object:

--->blob: binary large object --object is a large collection of uninterpreted binary data
--(whose interpretation is left to an application outside of the database system)
--->clob: character large object --object is a large collection of character data

--When a query returns a large object, a pointer is returned rather than the large object itself.

-- 2
--USERS
-- Superuser: This user is often the database administrator and is automatically created when you create a new database.
-- The superuser can perform all database operations, including granting and revoking privileges to other users and roles.
-- The database superuser does NOT have the same privileges as the Linux superuser (root).
-- Object owner: This user can create a particular database object, such as a table, schema, or view.
-- By default, only an owner or superuser can act on a database object.
-- Everyone else: All non-superuser or object owners are PUBLIC users. These users are granted the PUBLIC role.
-- Object owners are considered public users for objects they do not own.
--PRIVILEGES
-- Privileges are a type of permission that lets users perform an action on a database object.
-- Privileges are granted to or revoked from users or roles.
-- --ROLE
-- A role is a collection of privileges, such as “administrator”. Superusers can grant to or revoke from one or
-- more roles. Use roles to make managing permissions easier. Using roles avoids having to manually grant sets of
-- privileges user by user.
create role accountant;
create role administrator;
create role support;


grant select,insert, delete on transactions to accountant;
grant select, update on accounts, customers to support;
grant all privileges on accounts, customers to administrator;

create user A with password 'a';
create user B with password 'b';
create user C with password 'c';

grant administrator to A;
grant support to B;
grant accountant to C;

alter role administrator createrole;

revoke update on accounts from support;

-- 3







alter table transactions
    alter column id set not null,
    alter column date set not null,
    alter column src_account set not null,
    alter column dst_account set not null,
    alter column amount set not null,
    alter column status set not null;

-- 4
create domain AKSHA varchar(3);
alter table accounts
alter column currency TYPE AKSHA using currency::AKSHA;




-- 5
create unique index cus_cur on accounts (customer_id,currency);\

create index cur_bal on accounts (balance,currency);
create index search_in_src on transactions (src_account);
create index search_in_dst on transactions (dst_account);


-- 6
do $$
    begin
        savepoint mysv;
        insert into transactions values (4,'2021-11-05 18:00:34.000000','NT10204','RS88012', 600,'init');
        update accounts set balance = balance + 600 where account_id = 'NT10204';
        update accounts set balance = balance - 600 where account_id = 'RS888012';
        update transactions set status = 'commited' where id = 4;
        rollback to mysv;
    end;

    $$
do $$
    begin
        update accounts set balance = balance + 30 where account_id = 'AB10203';
        rollback;
        commit;
    end;
    $$