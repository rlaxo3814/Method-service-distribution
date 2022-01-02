create database kdt13;
use kdt13;
drop table memberTBL;
CREATE TABLE memberTBL (
    id VARCHAR(20) PRIMARY KEY,
    pwd VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    proImg VARCHAR(100) NULL,
    proContents VARCHAR(2000) NULL
)  DEFAULT CHARACTER SET UTF8 COLLATE UTF8_GENERAL_CI;


insert into memberTBL(member_id,member_pwd,member_name,member_email) 
values ('user','1234','사용자','a@a.com');

select * from memberTBL;

-- user 생성
create user 'mcsndev'@'%' identified by 'mcsn504';
grant all privileges on *.* to 'mcsndev'@'%';


-- 언어설정 확인
show variables like 'C%';

SELECT b.name, a.time_zone_id
FROM mysql.time_zone a, mysql.time_zone_name b
WHERE a.time_zone_id = b.time_zone_id AND b.name LIKE '%Seoul';

-- my.cnf 변경후 확인
SELECT @@global.time_zone, @@session.time_zone;

-- 비번설정
alter user 'root'@'localhost' identified BY 'insert_password';
