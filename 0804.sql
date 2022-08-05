use usertable;
create table TRAVEL_ROUTES (ROUTE_ID varchar(3) ,TRAVEL_ROUTE_NAME char(50),
DEPART varchar(50),DESTINATION varchar(50),
ROUTE_TYPE varchar(30),DEPARTURE varchar(10),PRICE int);
drop table TRAVEL_ROUTES;


xiawu
rename table ryokou to TRAVEL_ROUTES;
ALTER TABLE travel_routes CHANGE travel_route_name ruote_name VARCHAR(30);
ALTER TABLE travel_routes CHANGE route_id ruote_name_id VARCHAR(3);
alter table TRAVEL_ROUTES modify DEPARTURE char(10);
alter table TRAVEL_ROUTES modify PRICE varchar(7);
select * from TRAVEL_ROUTES;
INSERT INTO travel_routes VALUES('R01', '北海道1泊1部屋', '東京', '札幌', '国内', '2月6日', '4500');
INSERT INTO travel_routes VALUES('R02', '東京八王子市一日中', '東京都江東区', '東京都八王子市', '県内', '5月14日', '1000');
INSERT INTO travel_routes VALUES('R03', '日本からイギリスへ2週間', '東京', 'イギリス', '国際', '6月10日', '1300000');

ALTER TABLE travel_routes MODIFY price VARCHAR(10);

ALTER TABLE travel_routes ADD max_count INT;

ALTER TABLE travel_routes ADD dazhe DOUBLE(8,2);

ALTER TABLE travel_routes ADD gailv VARCHAR(50);
