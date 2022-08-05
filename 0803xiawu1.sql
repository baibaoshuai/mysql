use usertable;
create table stu (id int ,name char(10),sex char(5));
insert into stu values (1,'長岡一馬','男');
insert into stu values (2,'中本知佳','女');
insert into stu values (3,'松本義文','男');
insert into stu values (4,'佐竹友香','女');

create table test (id int,course char(6),score int);
insert into test values (1,'国語',30);
insert into test values (1,'英語',30);
insert into test values (2,'国語',70);
insert into test values (2,'数学',80);
insert into test values (3,'理科',92);
insert into test values (4,'社会',90);
insert into test values (4,'理科',35);
insert into test values (4,'英語',22);

select * from stu where sex='男';

select distinct name 
from stu join test on stu.id=test.id
where score<=30;

select sex, max(score) from stu join test 
where stu.id=test.id
group by sex;

select course,avg(score)<=50 from stu join test
where stu.id=test.id
group by course;

SELECT t1.*,
(SELECT AVG(t2.score)
FROM test t2 
WHERE t1.course = t2.course) 
AS subject_avg_score
FROM test t1;

select distinct name from stu join test
on stu.id=test.id
where course<>'理科';

create table users (id int,name char(10),addrss char(50),age int);
insert into users values(1,'もっくん','mokkon@example.com',19);
insert into users values(2,'みみこ','mimiko@example.net',20);
insert into users values(3,'さくら','sakura@example.com',31);
insert into users values(4,'ひよこ','hiyoko@examplel.jp',23);
insert into users values(5,'すずき','suzuki@example.jp',28);
create table follow (id int,followerid int);
insert into follow values(1,2);
insert into follow values(1,3);
insert into follow values(1,4);
insert into follow values(1,5);
insert into follow values(3,1);
insert into follow values(3,2);
insert into follow values(4,5);
insert into follow values(5,1);
insert into follow values(5,2);
insert into follow values(5,3);
insert into follow values(5,4);

1
select u1.name,followerid,u2.name
from users u1
inner join follow f on u1.id = f.id
inner join users u2 on f.followerid = u2.id
where u1.id = 3;

2
select u.id,u.name from users u
left join follow f on u.id = f.id
where f.id is null;

3
select CONCAT((FLOOR(age / 10) * 10)) as age_group,
SUM(case when f.id then 1 else 0 end) / COUNT(distinct u.id) as avg_count
from users u left join follow f on  u.id = f.id
group by CONCAT((FLOOR(age / 10) * 10));

4    
select  f1.id as id1, f1.followerid as id2
from follow f1
inner join follow f2 on f1.id = f2.followerid
and f1.followerid = f2.id
where f1.id < f1.followerid;

