select Wards.[Name], Places
from Wards, Departments
where DepartmentId = Departments.Id and Building = 5 and Places >5 and 15< any 
(select Places from Wards, Departments where DepartmentId = Departments.Id and Building = 5);

select Departments.[Name] 
from Departments, DoctorsExaminations, Wards
where DoctorsExaminations.[Date]>=getdate()-7 and
Departments.Id=Departmentid and Wards.Id=WardId;

select Diseases.[Name]
from Diseases
where Diseases.Id not in (select DiseaseId from DoctorsExaminations);

select Doctors.[Name] +' ' + Doctors.Surname as 'FullName'
from Doctors
where Doctors.Id not in (select DoctorId from DoctorsExaminations)


select Departments.[Name]
from Departments
where Departments.id not in (select DepartmentId from Wards)

select Doctors.Surname 
from Doctors, Interns
where Doctors.Id=DoctorId 

select Doctors.Surname as 'Surname Interns'
from Doctors,  Interns
where DoctorId=Doctors.id and Salary > ANY 
(select Salary from Doctors, Professors where DoctorId = Doctors.Id)

select Wards.[Name]
from Wards, Departments
where Places > any 
(select Places from Wards, Departments  where Departments.Id=DepartmentId and Building =3)
group by Wards.[Name];

select Doctors.Surname
from Doctors,Departments, DoctorsExaminations, Wards
where Doctors.Id=DoctorId and Wards.Id=WardId and Departments.Id = DepartmentId and 
Departments.[Name] = 'Ophthalmologi' or Departments.[Name] = 'Physiotherapy'
group by Doctors.Surname;

select Departments.[Name]
from Departments, Doctors, Professors, Interns, DoctorsExaminations, Wards
where DoctorsExaminations.DoctorId = Doctors.Id and Departments.id=DepartmentId and Wards.Id=WardId
group by Departments.[Name];

select Doctors.[Name] + ' ' + Doctors.Surname as 'FullName', Departments.[Name]
from Departments, Wards, Doctors, DoctorsExaminations
where Departments.Id=DepartmentId and Doctors.Id=DoctorId and Wards.Id=WardId and Financing > 20000;

select Departments.[Name]
from Departments, Wards, DoctorsExaminations, Doctors
where Departments.id =Departmentid and Doctors.Id=DoctorId and Wards.Id=WardId
and Salary = (select max(Salary) from Doctors)

select Diseases.[Name], count(Examinations.Id) as 'Number of Examinations'
from DoctorsExaminations, Diseases, Examinations
where Diseases.Id=DiseaseId
group by Diseases.[Name]