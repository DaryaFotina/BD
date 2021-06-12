use Academy;

create table Groups
(id int not null identity (1,1) primary key,
"Name" nvarchar(10) not null unique,
Rating int not null, 
Check (Rating between 0 and 5),
"Year" int not null, 
Check ("Year" between 1 and 5),
);

create table Departments
(id int not null identity (1,1) primary key,
Financing money not null default (0),
Check (Financing > 0), 
"Name" nvarchar(100) not null unique,
);

create table Faculties
(id int not null identity (1,1) primary key,
"Name" nvarchar(100) not null unique,
);

create table Teachers
(id int not null identity (1,1) primary key,
EmploymentDate date not null,
Check (EmploymentDate >= '1990-01-01'),
"Name" nvarchar(max) not null,
Premium money not null default (0),
Check (Premium >= 0),
Salary money not null,
Check (Salary >= 0),
Surname nvarchar(max) not null
);