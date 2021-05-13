select * from addresses;
select * from course_enrollment;
select * from courses;
select * from students;
select * from tutors;
select * from user_pics;
desc user_pics;


select stud_Id, name, email, dob, phone
  from students
 where stud_id = 1;
 

select stud_id, name, email, dob
	, substring(phone, 1, 3) as f
	, substring(phone, 5, 3) as m
	, substring(phone, 9, 4) as l
  from students where stud_id = 1;
 
 
/* 1:N */
select t.tutor_id, t.name as tutor_name, email, c.course_id, c.name, description, start_date, end_date
  from tutors t left outer join courses c on t.tutor_id = c.tutor_id
 where t.tutor_id = 1;
 

select course_id, name, description, start_date, end_date, tutor_id
  from courses;

select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where course_id = 1;
 
select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where name like '%java%';
  
select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where start_date >= '2013-02-01';

select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where end_date <= '2013-07-01';
 
select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where start_date >= '2013-02-01' and end_date <= '2013-07-01';
 

select t.tutor_id
			 , t.name as tutor_name
			 , email
			 , c.course_id
			 , c.name
			 , description
			 , start_date
			 , end_date
		from tutors t join courses c on t.tutor_id = c.tutor_id
		where t.tutor_id = 1;
