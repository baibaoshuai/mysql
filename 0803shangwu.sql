use usertable;
create table sy (id int, name char(10),code int);
insert into sy values (1133,'竹内勇太',1100);
insert into sy values (1134,'原田慶一',1200);
insert into sy values (1135,'伊藤鈴香',1100);
insert into sy values (1136,'斉藤悠里',1300);
create table bm (code int,name char(10),p_code int);
insert into bm values (1100,'第一営業部',1000);
insert into bm values (1200,'開発部',1000);
insert into bm values (1300,'第二営業部',1000);
//delete from sy where code=1000;
//drop table bm;
select * from sy,bm where sy.code = bm.code;
