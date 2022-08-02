use usertable;
select * from game_character;
select sex,count(*) from game_character group by sex;
select * from game_character order by age;
select age,count(*) from game_character group by age;
select * from game_character where age>=20;
select * from game_character where age<50 and job<>'战士';
select * from game_character whereage>30 and level<30;

