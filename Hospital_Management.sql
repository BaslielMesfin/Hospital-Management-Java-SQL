create database Hospital_Management;

use Hospital_Management;

create table Patient(
patientid int primary key identity,
firstname varchar(100) NOT NULL,
lastname varchar(100) NOT NULL,
dateofbirth date NOT NULL,
gender char(1) NOT NULL,
lastcheckin date default getdate()
);


create table Doctor(
doctorid int primary key identity,
firstname varchar(100) NOT NULL,
lastname varchar(100) NOT NULL,
specialty varchar(100),
docstatus bit default 1
);

create table Medicine(
medid int primary key identity,
medname varchar(100) NOT NULL,
expirydate date,
quantity int NOT NULL
);

create table Appointment(
appointmentid int primary key identity,
patientid int,
doctorid int,
appointmentdate datetime NOT NULL,
foreign key (patientid) references Patient(patientid),
foreign key (doctorid) references Doctor(doctorid)
);

insert into Patient (firstname, lastname, dateofbirth, gender)
values
('Aster', 'Dawit', '1988-06-15', 'F'),
('Leul', 'Zelalem', '2001-01-22', 'M'),
('Rediet', 'Hailu', '2004-01-29', 'F');

insert into Doctor (firstname, lastname, specialty)
values
('Sara', 'Melaku', 'Cardiology'),
('Nahom', 'Tesfaye', 'Neurology'),
('Dawit', 'Abebe', 'Dermatology');

insert into Medicine (medname, expirydate, quantity)
values
('Aspirin', '2025-12-30', 100),
('Ibuprofen', '2024-9-19', 200),
('Paracetamol', '2025-3-20', 300),
('Amoxicillin', '2025-01-11', 75);

select * from Patient;
select * from Doctor;
select * from Medicine;
select * from Appointment;



insert into Patient(firstname, lastcheckin, dateofbirth, gender)
values
('Rediet', 'Hailu', '2004-01-29', 'F');

insert into Medicine (medname, expirydate, quantity)
values ('Amoxicillin', '2025-01-11', '75');
