use BookShop;

create table Authors 
(id int not null identity(1, 1) primary key,
"Name" nvarchar(max) not null check ([Name] <> N''),
Surname nvarchar(max) not null check ([Surname] <> N''),
CountryId int not null
);

create table Books
(id int not null identity(1, 1) primary key,
"Name"nvarchar(max) not null check ([Name] <> N''),
Pages int not null check (Pages  >=0),
Price money not null check (Price >0),
PublishDate date not null check ([PublishDate] <= getdate()),
AuthorId int not null,
ThemeId int not null
);

create table Countries
(id int not null identity(1, 1) primary key,
"Name" nvarchar(50) not null unique check ([Name] <> N'')
);


create table Sales
(id int not null identity(1, 1) primary key,
Price money not null check (Price >0),
Quantity int not null check (Quantity >=0),
SaleDate date not null check ([SaleDate] <= getdate()) default getdate(),
BookId int not null,
ShopId int not null
);

create table Shops
(id int not null identity(1, 1) primary key,
"Name"  nvarchar(max) not null check ([Name] <> N''),
CountryId int not null
); 

create table Themes
(id int not null identity(1, 1) primary key,
"Name"  nvarchar(100) not null unique check ([Name] <> N'')
);


alter table Books add foreign key (AuthorId) references Authors([Id]);
alter table Books add foreign key (ThemeId) references Themes([Id]);
alter table Sales add foreign key (ShopId) references Shops([Id]);
alter table Sales add foreign key (BookId) references Books([Id]);
alter table Shops add foreign key (CountryId) references Countries([Id]);
alter table Authors add foreign key (CountryId) references Countries([Id]);