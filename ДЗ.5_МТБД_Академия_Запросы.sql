select count(*) as [Teachers and Groups]
from Teachers, Groups;

select d.[Name]
from  Departments as D, Faculties as F
where D.Financing < F.Financing;

select Surname as [Surname Curators], "Name" as [Name Groups]
from Curators as C, GroupsCurators as GC
where C.Id = GC.Id;

select t.[Name], Surname as [Surname Teachers]
from Teachers t, Groups as G, GroupsLectures as Gl, Lectures as L
where G."Name" = 'P107' and G.Id = GL.GroupId and Gl.LectureId = L.Id and T.Id = L.TeacherId;

select t.Surname, f.[Name]
from Teachers t, Faculties f, Departments d, Lectures l, Groups g, GroupsLectures gl
where f.Id = FacultyId and t.Id = TeacherId and l.Id = LectureId;

select s.[Name] 
from Subjects s, Teachers t, Lectures l
where t.[Name] = 'Samantha' and t.[Surname] = 'Adams' and s.Id = SubjectId and t.Id = TeacherId;

select d.[Name]
from Departments d, Subjects s
where s.[Name] = 'Database Theory';

select g.[Name] as [Name Groups]
from Groups g, Faculties f, Subjects, Departments d
where f.[Name] ='Computer Scince' and g.Id= DepartmentId and d.Id = FacultyId;

select g.[Name], f.[Name]
from Groups g, Departments d, Faculties f
where g.[Year] = 5 and f.Id = FacultyId and d.Id = DepartmentId;

select t.[Name] + t.Surname as  Teachers, s.[Name] as Subjects, g.[Name] as "Group"
from Teachers t, Groups g, Subjects s, Lectures l, GroupsLectures dl
where l.LectureRoom = 'B103' and t.Id = TeacherId and g.Id = GroupId and s.Id = SubjectId 
and l.Id = LectureId