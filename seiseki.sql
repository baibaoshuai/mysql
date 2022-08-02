use usertable;
select * from seiseki;
select * from seiseki where sex='男';
select * from seiseki where score<30;
select * from seiseki where course='国語';
select * from seiseki where course='理科' or course='数学';
select * from seiseki where course<>'英語' group by stu_id having count(stu_id)=2;
select * from seiseki order by score desc;
select * from seiseki where course='国語'and course='英語'and course='理科'and course='数学' and course='社会';
select course,count(*) from seiseki group by course;
 
