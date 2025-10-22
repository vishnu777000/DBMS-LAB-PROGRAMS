create table students(rollno varchar2(30), name varchar2(30)); 
insert into students values('24B11CS960','panther'); 
insert into students values('24B11CS3409','jope'); 
select * from students; 
select * from students where rollno='24B11CS960'; 
delete from students where rollno='24B11CS3409';  
update students  set name='vishu'  where rollno='24B11CS960'; 

