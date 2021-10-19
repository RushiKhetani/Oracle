/*------------------------------------------------Hostel Table---------------------------------------------------------------------------------*/
create table  hostel
(
   h_no number(3) not null primary key,
   h_name varchar(20) not null,
   h_add varchar(50) not null,
   total_cap number(3) not null,
   warden varchar(50) not null
);

insert into hostel values(1,'marwadi','rajkot',10,'admin');
insert into hostel values(2,'marwadi','jamnager',10,'admin');
insert into hostel values(3,'saurastra','rajkot',10,'admin');
insert into hostel values(4,'rk','jamnagar',10,'admin');
insert into hostel values(5,'atmiya','jamnagar',10,'admin');
/*------------------------------------------------Hostel Table---------------------------------------------------------------------------------*/


/*--------------------------------------------------Room Table---------------------------------------------------------------------------------*/
create table  room
(
   h_no int references hostel(h_no) not null ,
   r_no number(3) not null,
   r_type varchar(30) not null ,
   location varchar(30) not null,
   no_of_stud number(3) not null,
   status varchar(10) not null,
   primary key (h_no,r_no) 
);

insert into room values(1,101,'4','sgroad',10,'pending');
insert into room values(2,102,'4','sgroad',4,'booked');
insert into room values(3,103,'6','sgroad',6,'booked');
insert into room values(4,104,'6','sgroad',6,'booked');
insert into room values(5,105,'4','sgroad',10,'pending');
/*--------------------------------------------------Room Table---------------------------------------------------------------------------------*/


/*-----------------------------------------------Charges Table---------------------------------------------------------------------------------*/
create table  charges
(
   h_no int references hostel(h_no) ,
   r_type varchar(30),
   charge number(4) not null
);

insert into charges values(1,'4',400);
insert into charges values(2,'4',400);
insert into charges values(3,'6',600);
insert into charges values(4,'6',600);
insert into charges values(5,'4',400);
/*-----------------------------------------------Charges Table---------------------------------------------------------------------------------*/


/*-----------------------------------------------Students Table--------------------------------------------------------------------------------*/
create table  students
(
   sid number(3) not null primary key, 
   sname varchar(20) not null,
   mobile number(3) not null , 
   gender varchar(20) not null, 
   faculty varchar(20) not null, 
   dept varchar(20) not null, 
   class varchar(20) not null,
   h_no int references hostel(h_no)  ,
   r_no number(3)   
);

insert into students values(1,'Rushi',96,'male','computer','bca','a',1,101);
insert into students values(2,'Ronak',96,'male','commerce','bcom','b',2,102);
insert into students values(3,'jay',96,'male','arts','englis','c',3,103);
insert into students values(4,'yash',96,'male','computer','bca','b',4,104);
insert into students values(5,'admin',96,'male','computer','bca','b',5,105);
/*-----------------------------------------------Students Table--------------------------------------------------------------------------------*/



/*--------------------------------------------------Fees Table---------------------------------------------------------------------------------*/
create table fees 
(   sid  number(3) references students(sid) , 
    fdate varchar(20) not null, 
    famount number (10) not null
);

insert into fees values(1,'dec',500);
insert into fees values(2,'jan',900);
insert into fees values(3,'sep',300);
insert into fees values(4,'oct',400);
insert into fees values(5,'nov',800);
/*--------------------------------------------------Fees Table---------------------------------------------------------------------------------*/