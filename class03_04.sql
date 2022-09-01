CREATE DATABASE hartwick;
use hartwick;
create table FACULTY (
HawkID int not null,
LastName char(20) not null,
FirstName char(20) not null,
primary key (HawkID)
);
create table LAPTOP (
LaptopID int not null,
LaptopMake varchar(20) not null,
LaptopModel varchar(20) not null,
HawkID int not null,
primary key (LaptopID),
foreign key (HawkID) references FACULTY(HawkID)
);
create table SOFTWARE (
SoftwareID int not null,
SoftwareType varchar(20) not null,
SoftwareVersion varchar(20) not null,
primary key (SoftwareID)
);
create table FACULTY_SOFTWARE (
HawkID int not null,
SoftwareID int not null,
primary key (HawkID, SoftwareID),
foreign key (HawkID) references FACULTY(HawkID),
foreign key (SoftwareID) references SOFTWARE(SoftwareID)
);
create table SOFTWARE_LICENCES_LAPTOP (
SoftwareID int not null,
LaptopID int not null,
InstallDate int not null,
primary key (SoftwareID, LaptopID),
foreign key (SoftwareID) references SOFTWARE(SoftwareID),
foreign key (LaptopID) references LAPTOP (LaptopID)
);