select "Name", Financing, id
from Departments; 

select "Name" as [Group Name], Rating as [Group Rating]
from Groups;

select Surname, Salary/Premium * 100 as [Persent 1], 
Salary/(Salary + Premium) *100 as [Persent 2]
from Teachers

select 'The dean of faculty' + ' ' + ' ' + Name + ' ' + ' ' + 'is'+ ' ' + Dean
from Faculties; 

select Surname 
from Teachers
where IsProfessor = 1 and Salary > 1050;

select "Name"
from Departments
where Financing < 11000 and Financing > 25000;

select "Name"
from Faculties
where not "Name" =  'Computer Science';

select Surname, Position
from Teachers
where not Position = 'Профессор';

select Surname, Position, Salary, Premium, IsAssistant
from Teachers
where Premium between 160 and 550;

select Surname, Salary
from Teachers
where IsAssistant = 1;

select Surname, Position
from Teachers
where EmploymentDate < '2000-01-01';

select "Name" as 'Name of Department'
from Departments
where "Name" < 'Software Development' order by "Name";

select Surname
from Teachers
where IsAssistant = 1 and (Salary + Premium) <= 1200;

select "Name" as [GroupsName 5 Year]
from Groups 
where "Year" = 5 and Rating between 2 and 4;

select Surname
from Teachers
where IsAssistant =1 and Salary < 550 or IsAssistant =1 and Premium < 200;
