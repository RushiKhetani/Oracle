------------------------------------------------------------------------------/*doctor table*/-----------------------------------------------------------------------------
create table doctor
(
    dno number(3) primary key, 
    dname varchar(50),
    specialization varchar(50), 
    clinic_addr varchar(50)
);

insert into values doctor()
------------------------------------------------------------------------------/*doctor table*/-----------------------------------------------------------------------------



------------------------------------------------------------------------------/*medicine table*/---------------------------------------------------------------------------
create table medicine
(
    mno number(3) not null primary key,
    mname varchar(50) not null, 
    typ varchar(50) not null, 
    content number(10) not null, 
    manufacturer varchar(50) not null
);

insert into values medicine(values)
------------------------------------------------------------------------------/*medicine table*/---------------------------------------------------------------------------



-----------------------------------------------------------------------------/*disease table*/-----------------------------------------------------------------------------
create table disease
(
    dname varchar(50) not null primary key, 
    symptom1 varchar(50) not null, 
    symptom2 varchar(50) not null, 
    symptom3 varchar(50) not null
);

insert into values disease(values)
----------------------------------------------------------------------------/*disease table*/------------------------------------------------------------------------------



----------------------------------------------------------------------------/*treatment table*/----------------------------------------------------------------------------
create table treatment
(
    tno number(3), 
    dno number references doctor(dno), 
    disease_name varchar references disease(dname), 
    mno number, 
    dosage varchar(50), 
    avg_cure_time varchar(50)
);

insert into values treatment()
----------------------------------------------------------------------------/*treatment table*/----------------------------------------------------------------------------