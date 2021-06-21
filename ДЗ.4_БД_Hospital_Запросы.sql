select *
from Wards;

select "Floor"
from Departments group by "Floor";

select "Name" as [Name of Disease], Severity as [Severity of Disease]
from Diseases;

select "Name" + Surname as FullName, Phone, Salary + Premium as "Sum"
 from Doctors

select "Name" as [Name Departments]
from Departments
where Building = 5;

select "Name" as [Name Wards]
from Wards
where Building >= 4 and "Floor" = 1; 

select Surname as [Surname Doctors]
from Doctors
where (Salary + Premium) > 1500;

select Surname as [Surname Doctors]
from Doctors
where (Salary + Premium)/2 > Premium * 3;


