use praktika2;
create table Departments
(
Id int not null IDENTITY(1,1) PRIMARY KEY,
Building int not null,
Check (0 > Building and Building < 6),
Financing money not null default (0),
Check (Financing > =0),
"Name" nvarchar(100) not null UNIQUE,
);
create table Diseases
(
Id int not null IDENTITY(1,1) PRIMARY KEY,
"Name" nvarchar(100) not null UNIQUE,
Severity int not null default (1),
Check (Severity = 1),
)