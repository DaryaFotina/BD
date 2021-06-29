select count(*)Wards
from Wards
where Places > 10

select d.Building as [Name Building], count(w.Id) as [Numbers of Wards]
from Departments as d, Wards as w
where d.Id = w.DepartmentId
group by d.Building;

select Departments.[Name] as 'Name Departments', count(*) as 'Numbers of Wards'
from Departments, Wards
where Departments.Id=DepartmentId
group by Departments.[Name] 

select Departments.[Name] as 'Name Departments', sum(Doctors.Premium) as 'Premium of Doctors'
from Departments, Doctors, Wards, DoctorsExaminations
where Departments.Id = DepartmentId and Doctors.Id=DoctorId 
group by Departments.[Name] 

select D.[Name]
from Departments as D, DoctorsExaminations as DE, Wards as W, Doctors as Ds
where D.Id = W.DepartmentId and w.Id=de.WardId and ds.Id=de.DoctorId
group by D.[Name]
having COUNT(ds.Id)>=5;


select COUNT(*) as 'Numbers of Doctors', sum(Doctors.Salary + Doctors.Premium) as 'Sum salary'
from Doctors;

select AVG(d.Salary + d.Premium) as [Monay]
from Doctors d;

select Wards.[Name] as 'Name Wards'
from Wards
where Places = (select min(Places) from Wards);

select d.Building
from Departments as d, wards as w, DoctorsExaminations as de
where d.Building=1 or d.Building=6 or d.Building=7 or d.Building=8
having sum(w.Places)>100 and w.Places>10;