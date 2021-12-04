create table Vehicle_Company(
    C_Name varchar(50) unique not null ,
    Head varchar(50) not null ,
    primary key(C_Name)
);
--drop table vehicle_company cascade ;

create table BRAND(
    B_Name varchar(50) unique not null,
    NoE int not null ,
    C_Name varchar (50) not null,
    primary key (B_Name),
    foreign key (C_Name) references vehicle_company (C_Name)
                  on DELETE cascade on update cascade

);
--drop table brand cascade ;
create table Model(
    M_Name varchar(30) not null,
    Body_Style varchar(30) not null,
    B_Name varchar(50) not null,
    primary key (M_Name),
    foreign key (B_Name) references BRAND (B_Name)
                  on DELETE cascade on update cascade
);
create table Employee(
    E_ID varchar(3) not null ,
    E_name varchar(30) not null ,
    Profession varchar(30) not null ,
    B_Name varchar(50) not null ,
    primary key (E_ID),
    foreign key (B_Name) references BRAND (B_Name)
                     on DELETE cascade on update cascade
);
create table Vehicle(
    B_Name varchar(50) not null references brand(B_Name),
    M_name varchar(30) not null ,
    V_VIN varchar(10) unique not null ,
    V_Year varchar(4) not null ,
    V_Complectation varchar(20) not null ,
    V_Status varchar(20) not null ,
    V_Price_in_$ dec(10,2) not null ,
    Contructed_date date,
    primary key (V_VIN),
    foreign key (M_name) references Model(M_Name)
                    on DELETE cascade on update cascade
);
--drop table vehicle cascade ;
create table Options(
    V_VIN varchar(10) unique not null ,
    Color varchar(30) not null ,
    Engine varchar(50) not null ,
    Transmission varchar(50) not null,
    primary key (V_VIN),
    foreign key (V_VIN) references Vehicle(V_VIN)
                    on DELETE cascade on update cascade
);
--drop table Options cascade ;
create table COMP(
    COMP_ID varchar(5)  not null ,
    B_Name varchar(50) not null references BRAND(B_Name),
    V_VIN varchar(10) unique not null ,
    Location varchar(30) not null ,
    primary key (V_VIN),
    foreign key (V_VIN) references Vehicle(V_VIN)
                 on DELETE cascade on update cascade
);
--drop table COMP cascade ;
create table Suppliers(
    Sup_Name varchar(30) not null ,
    COMP_ID varchar(3) not null ,
    Location varchar(30) not null ,
    primary key (Sup_Name)
);
--drop table suppliers;
create table Supply_Info(
    V_VIN varchar(10) primary key not null references Vehicle(V_VIN),
    Sup_Name varchar(30) not null references Suppliers(Sup_Name),
    COMP_ID varchar(3) not null ,
    Veh_Part varchar(30),
    Sup_Date date
);
--drop table supply_info;
create table Dealers(
    D_ID varchar(3) not null  ,
    D_Name varchar(30) not null  ,
    Location varchar(30) not null ,
    B_Name varchar(30) not null ,
    primary key (D_ID),
    foreign key (B_Name) references BRAND(B_Name)
);
create table Customers(
    C_ID varchar(3) not null unique ,
    F_Name varchar(20) not null ,
    S_Name varchar(20) not null ,
    Phone varchar(12) not null ,
    City varchar(30) not null ,
    Street varchar(30) not null ,
    House_num varchar(3) not null ,
    Gender varchar(1) not null ,
    Annual_Income_in_$ dec,
    primary key (C_ID)
);
--drop table customers cascade ;
create table Sale_info(
    Sale_ID varchar(3) not null ,
    C_ID varchar(3) not null ,
    D_ID varchar(3) not null ,
    B_Name varchar(50) not null references brand(B_Name),
    V_VIN varchar(10) not null ,
    Date date not null ,
    primary key (Sale_ID),
    foreign key (C_ID) references customers(C_ID),
    foreign key (D_ID) references dealers(D_ID),
    foreign key (V_VIN) references Vehicle(V_VIN)
);
--drop table sale_info;
create table Storage(
    S_ID varchar(3)  not null ,
    D_ID varchar(3) not null references dealers(D_ID),
    V_VIN varchar(10) primary key not null references Vehicle(V_VIN),
    Status varchar(40) not null
);
--drop table storage cascade;
