--Task 1
select * from course where credits>3;
select * from classroom where building in ('Watson', 'Packard');
select * from course where dept_name = 'Comp. Sci.';
select * from course where course_id = some (select course_id from section where semester = 'Fall');
select * from student where tot_cred between 45 and 90;
select * from student where name similar to '%(a|e|u|o|y|i)';
select * from course where course_id = some (select course_id from prereq where prereq_id = 'CS-101');

--Task 2
--a. For each department, find the average salary of instructors in that
--department and list them in ascending order. Assume that every
--department has at least one instructor;
--b. Find the building where the biggest number of courses takes place;
--c. Find the department with the lowest number of courses offered;
--d. Find the ID and name of each student who has taken more than 3 courses
--from the Computer Science department;
--e. Find all instructors who work either in Biology, Philosophy, or Music
--departments;
--f. Find all instructors who taught in the 2018 year but not in the 2017 year;
--a
select dept_name, avg(salary) from instructor group by dept_name order by avg(salary) asc;
--b
SELECT DISTINCT building,count(course_id)
from (SELECT DISTINCT building,course_id FROM section) as foo GROUP BY building ORDER BY count(course_id) DESC LIMIT 1;
--c
select distinct dept_name, count(course_id)  from (select distinct dept_name, course_id from course)
    as foo group by dept_name order by count(course_id);

--d
--e
select * from instructor where dept_name in ('Biology', 'Philosophy', 'Music');
--f
select ID, name from instructor where ID in(select ID from teaches where year = 2018 and
            id not in (select id from teaches where year = 2017));

--Task 3
--Write the following queries in SQL, using the university schema:
--a. Find all students who have taken Comp. Sci. course and got an excellent
--grade (i.e., A, or A-) and sort them alphabetically;
--b. Find all advisors of students who got grades lower than B on any class;
--c. Find all departments whose students have never gotten an F or C grade;
--d. Find all instructors who have never given an A grade in any of the courses
--they taught;
--e. Find all courses offered in the morning hours (i.e., courses ending before
--13:00);
--a
select distinct id, name from student where id in
        (select id from takes where grade in ('A','A-') and
          course_id in(select course_id from course where course.dept_name = 'Comp. Sci.')) order by name;
--b
select distinct i_id from advisor where s_id in (select id from takes where grade not in ('A','A-','B+','B'));
--c
select distinct dept_name from course where dept_name not in (select dept_name from course where course_id in
    ( select course_id from takes where grade in ('F','C')));
--d
select distinct id from teaches where id not in (select id from teaches where (course_id,sec_id,semester,year)
in (select course_id,sec_id,semester,year from takes where grade in ('A')));
--e
select course_id from course where course_id in (select course_id from section where time_slot_id
                in(select distinct time_slot_id from time_slot where time_slot_id in (select time_slot.time_slot_id where end_hr<13)));
