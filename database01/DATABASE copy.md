# 데이터 베이스
## 데이터 베이스 이해 
데이터베이스 : 테이블의 집함
테이블  : 엑셀 시트와 같은 구조 
레코드  : 정보의 집합, 한줄

## 관계형 데이터 베이스 다루기
1. 데이터베이스 연결 : 아이디, 비번 등을 가지고 연결
2. 테이블 생성 : create table 테이블명(속성 타입, 속성 타입)
3. 레코드 추가 : insert int 테이블명(속성, 속성) values ( '값' , 10)
4. 데이터 조회 : select 속성 from 속성 where 조건식

# 명령어 사용법 
명령어 ;
한줄 주석은 # --
열러줄 주석 /**/ 

## 몽고디비
nosql 
관계형 데이터 베이스 테이블 -> 컬렉션
레코드 -> document 문서객체 { object 1개 }  


# 가상 DB 설치 
npx json-server -p 3500 -w  data/db.json

# fetch 연결 
https://www.codingfactory.net/12095
https://coding-hyeok.tistory.com/23

# mariadb 모듈 설치
npm i mariadb -s

# mysql 모듈 설치
```
npm i mysql2 

// er-dirgram
// 클래스 다이어그램 

// 로그인
command prompt mariadb
mysql -u username -p
mysql -u root -p 
비밀번호 입력 12345

```

# 엑시오스 연결 
https://artistjay.tistory.com/28?category=928989

# 맥 설치
https://mariadb.com/kb/ko/installing-mariadb-on-macos-using-homebrew/

# SQL
# DDL( Data Defind Language  , 데이터 정의어)
- 데이터 베이스를 정의하는 언어로 데이터를 생성, 수정, 삭제하는 SQL
- schema, domain, table, view, index를 정의하거나 변경 또는 삭제하기 위한 명령어
- DB관리자나 설계자가 사용
   
|명령     | 기능                                 |
|---|---|
|CREATE  |데이터 베이스, 테이블등을 생성하는 역활  |
|DROP    |데이블을 삭제하는 역활                  |
|ALTER   | 데이터베이스, 테이블을 구조변경하는 역활|
|TRUNCATE|데이블을 초기화 시키는 역활             |

desc tables; 테이블 필드(구조) 확인
desc employees;

# DML(Data Manipulation Language, 데이터 조작어)
- 데이터베이스 사용자가 응용프로그램이나 질의어를 통하여 저장된 데이터를 처리하는 언어로
작성한 테이블에 추가, 삭제, 수정, 조회하는 SQL

|명령|기능|
|---|---|
|INSERT |데이터를 조회하는 역활|
|SELECT|데이터를 삽입|
|UPDATE |데이터를 수정|
|DELETE|데이터를 삭제|

# DCL(Data Control Language, 데이터 제어어 )
- 데이터베이스에 접근하거나 객체에 권한을 주는등의 역할을 하는 SQL
- 데이터의 보안, 무결성, 데이터 회복, 병행 수행 제어 등을 정의 하는 언어
- 데이터 베이스 관리자가 DB를 관리하는 것이 목적 

|GRANT| 특정 데이터베이스 사용자에게 특정 작업에 대한 수행권한 부여|
|REVOKE| 특정 데이터베이스 사용자에게 특정 작업에 대한 수행 권한을 박탈, 회수| 
|COMMIT| 트랜잭션의 작업을 취소 및 원래래 복구|
|ROLLBACK| 트랜잭션의 작업을 취소 및 원래대로 복구|
|GRANT| 특정 데이터베이스 사용자에게 특정 작업에 대한 수행권한 부여 |
|REVOKE| 특정 데이터베이스 사용자에게 특정 작업에 대한 수행 권한을 박탈, 회수 |

# CRUD란? (Create,Read,Update,Delete)

# 데이터 베이스 사용 순위
https://db-engines.com/en/ranking
mysql 설치 : https://m.blog.naver.com/bjh7007/221829548634

## 1. mariadb 설치
 - url : https://mariadb.org/download/
 - 조금 기다리시면 download버튼이 나오는데 해당 버튼 클릭해서 다운로드
 - 설치하시면 됩니다.
 * 설치시 주의사항 !!!!! : 넥스트를 누르다 보면
  비밀번호 입력하는 곳이 나오는데 해당 비밀번호 반드시 외워야 하며
  하단에 utf-8 케릭터셋으로 설치하는 옵션이 있습니다.
  반드시 체크하시고 설치해야 하고 한글 안됩니다.
 - 설치시 데이터 베이스 생성 폴더 확인하면 다음 폴더에 생성됨 
   C:\Program Files\MariaDB 10.5\data
 - 데이터베이스 문제로 재설치 후 재부팅 안해도 됨 
 
## 2. HeidiSQL 사용 : 맥불가
 - 자동으로 mariadb 연동 툴 HeidiSQL 이 설치가 됩니다. 해당 프로그램 실행
 - 세션 관리자 화면에서 아이디는 root로 두시고 비밀번호는 아까 설치할때
   작성했던 비밀번호를 작성하신뒤에 왼쪽 하단에 저장 버튼 누르시면 다음에 다시 실행했을때 다시 입력할 필요가 없습니다.  
 - 윈도우 바탕화면의  HeidiSQL 열면 아래와 같은 화면 나옴
 - 현재 커서의 쿼리문 실행은 ctrl+shift+F9 
 - 쿼리문 전체 실행은 F9
 - 블럭 지정된 쿼리문 실행은 ctrl + F9
   CREATE DATABASE study;
   입력 후 ; 앞으로 커서 이동 후 ctrl+shift+F9 
   쿼리문 실행은 ;; 사이를 실행하는 이유로  ; 앞으로 이동 후 실행 

 - 오타 없이 입력하였다면  왼쪽 스키마 창에서 F5(reflash) 하면 다음과 같은 창이 나오며 
   아래 output 창에 다음과 같은 메시지 출력 

### 데이터베이스 생성과 사용
```   
   CREATE DATABASE study;
   SHOW DATABASES;
   USE `study`;
   show full columns from 테이블;
   show columns from 테이블;


``` 

   /* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 초 */
 - C:\Program Files\MariaDB 10.5\data폴더 확인하면 study 폴더가 생성되어 있음 

### 테이블 생성 
```
   CREATE TABLE users(
      id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
      userid VARCHAR(30) NOT null UNIQUE,
      --, # : 한줄 주석, /* 여러줄 주석 */
       /* UNIQUE 유일키 지정, 이키값이 중복되면 데이터 입력이 안됨 */
      username varchar(30) ,
      userpwd VARCHAR(70) NOT null
   );

    SHOW TABLES;

 ```   
   

### 데이터 베이스 , 테이블 삭제
```
DROP TABLE cart_info;
```

### 데이터 입력 
```
   INSERT INTO users(userid, userpwd) VALUES('test1', 1111);
   /* values속성에 복수형 s 주의 */
   테이블 명( 필드명,...)  values (필드명 순서대로 데이터 삽입)
   INSERT INTO users(userid, userpwd, username) VALUES('test1', 12345, '김길동');
   INSERT INTO users(userid, userpwd, username) VALUES('test2', 12345, '은길동');
   INSERT INTO users(userid, userpwd, username) VALUES('test5', 12345, '오길동');
   INSERT INTO users(userid, userpwd, username) VALUES('test4', 12345, '홍길동');
   INSERT INTO users(userid, userpwd, username) VALUES('test3', 12345, '박길동');
```  
    

### 데이터 검색 
```
   SELECT * from user_info;
   SELECT COUNT(*) from  user_info;
   SELECT NOW();
    
   SELECT * FROM users WHERE Country = '서울';
   대소문자 구문없이 찾음
 
   select * from employees where binary(first_name) = 'chriss';

   SELECT * FROM users WHERE 1=1 
   AND ui_name LIKE '%김%';

   SELECT * FROM users WHERE 1=1 
   AND ui_name LIKE '%김%'
   and gi_price = '300'
   and gi_credat >= '20210205';
```
 - 위 명령어 실행 후 output 결과 
 /* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 초 */


 ### 데이터 삭제
```
   DELETE from users where ;  // 테이블 내의 모든 데이터를 삭제하므로 유의

   DELETE from users WHERE 1=1  AND ui_id LIKE '%test4%';
   // test4를 포함한 데이터 삭제 
delete from users where usernum in ( 5, 6, 8);
   SELECT * FROM Customers;
```
 - 위 명령어 실행 후 output 결과 
/* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.016 초 */
 /* 127.0.0.1 에 MariaDB (TCP/IP) 을(를) 통해 연결 중, 사용자 이름 "root", 암호 사용: Yes… */

### 데이터 수정 
```
   UPDATE users SET ui_name = '삼길동' WHERE 1=1 AND ui_id LIKE '%test3%';

   UPDATE users SET ui_name = '은길동', useremaile = 'test2@test.com'  WHERE  1=1
   AND ui_id LIKE '%test2%';

   SELECT * FROM Customers;
```
 - 위 명령어 실행 후 output 결과 
 /* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 초 */

// 조건절이 없다면 모든 데이터를 수정하게 되므로 where을 반드시 사용하도록 한다. 
UPDATE Customers
SET CustomerName='하르방', City='한라산', Country='선계'
WHERE CustomerID = 1;



# 뷰 템플릿 적용 ejs
뷰 : 눈에 보이는 부분으로 사용자에게 결과를 보여주기 위해 만든 파일로 
자바스크립트로 처리하기보다 웹문서를 미리 만들어  두고  사용하는 것이 좋음 
응답 웹문서의 기본 형태를 뷰템플릿 파일로 만들어 두고 사용함
뷰템플릿을 사용하면 웹문서의 기본 형태는 템플릿으로 만들어 두고 데이터베이스를 조회하여 템플릿의 적다아한 위치에 넣어 웹문서를 만듬, 이때 뷰 템플릿을 자동으로 생성후 응답을 보내는 역활을 뷰엔진이 함

모델 : 데이터를 제공하는 것으로 데이터베이스를 저장하거나 조회하는 함수
컨트롤러 : 처리되는 과정을 담당하는 것으로 사용자 요청을 처리하는 라우팅 함수 


```
CREATE DATABASE study;

// 권한 주기 
CREATE USER study@localhost IDENTIFIED BY 'study1234';
GRANT ALL PRIVILEGES ON *.* TO 'study'@localhost IDENTIFIED BY 'study1234';
flush privileges;  // commit

///모든 권한 
create user dooo@'%' identified by ＇root!';
grant all privileges on dooodb.* to 'root'@'%'; 
flush privileges;  // commit

use study;
CREATE table user_info(
      ui_num INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
      ui_pwd VARCHAR(30) NOT NULL,
      ui_name VARCHAR(30) NOT NULL, 
      ui_active CHAR(1) NOT NULL DEFAULT 1
);
```
// table 생성후 새로운 table로 변경 하고 생성 
CREATE OR REPLACE table user_info(
   ui_num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   ui_id VARCHAR(30) NOT NULL unique,
   ui_pwd VARCHAR(30) NOT NULL,
   ui_name VARCHAR(30) NOT NULL,
   ui_desc VARCHAR(4000),
   ui_credat DATE NOT NULL DEFAULT CURDATE(),
   ui_active CHAR(1) NOT NULL DEFAULT 1
);```

```CREATE OR REPLACE table goods_info(
   gi_num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   gi_name VARCHAR(30) NOT NULL,
   gi_price INT NOT NULL DEFAULT 0,
   gi_img VARCHAR(100) NOT NULL,
   gi_desc VARCHAR(4000),
   gi_credat DATE NOT NULL DEFAULT CURDATE(),
   gi_active CHAR(1) NOT NULL DEFAULT 1
);```

# alter
alter Table [ add | Modify | Change | Drop ] column 칼럼명 ; 
alter table employees add column mynum bit not null default 0; 
// 기본값이 있는 것이 좋음 
update * from employees mynum = mod(emp_no, 2);
// 2로 나눈 나머지 값으로 셋팅 
alter table users add column userpwd varchar(50) ; 
alter table users modify column userpwd varchar(100) ;



// 테이블 지우기 
DROP TABLE cart_info;
// column 지우기
alter table user_info drop column ui_active;
```
CREATE OR REPLACE table cart_info(
   ci_num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   ui_num INT NOT NULL,
   gi_num INT NOT NULL,
   ci_cnt INT NOT NULL DEFAULT 1,
   ci_sum_price INT NOT NULL DEFAULT 0,
   ci_credat date NOT NULL DEFAULT CURDATE(),
   CONSTRAINT fk_ui_num
   FOREIGN KEY (ui_num) 
   REFERENCES user_info(ui_num),
   CONSTRAINT fk_gi_num
   FOREIGN KEY (gi_num) 
   REFERENCES goods_info(gi_num)
);
```
// 데이터는 disk에 인덱스는 메모리에 있음 

INSERT INTO user_info(ui_id, ui_pwd, ui_name, ui_desc)
VALUES('test','test','홍길동','나는홍길동');

INSERT INTO goods_info(gi_name, gi_price, gi_img, gi_desc)
VALUES('신라면','1500','/imgs/1.jpg','농심신라면'),
('육개장','900','/imgs/2.jpg','농심육개장'),
('열라면','1200','/imgs/3.jpg','오뚜기열라면'),
('힐러','1600','/imgs/4.jpg','오뚜기힐러'),
('신라면','1500','/imgs/1.jpg','농심신라면'),
('육개장','900','/imgs/2.jpg','농심육개장'),
('열라면','1200','/imgs/3.jpg','오뚜기열라면'),
('힐러','1600','/imgs/4.jpg','오뚜기힐러'),
('신라면','1500','/imgs/1.jpg','농심신라면'),
('육개장','900','/imgs/2.jpg','농심육개장'),
('열라면','1200','/imgs/3.jpg','오뚜기열라면'),
('힐러','1600','/imgs/4.jpg','오뚜기힐러'),
('신라면','1500','/imgs/1.jpg','농심신라면'),
('육개장','900','/imgs/2.jpg','농심육개장'),
('열라면','1200','/imgs/3.jpg','오뚜기열라면'),
('힐러','1600','/imgs/4.jpg','오뚜기힐러'),
('신라면','1500','/imgs/1.jpg','농심신라면'),
('육개장','900','/imgs/2.jpg','농심육개장'),
('열라면','1200','/imgs/3.jpg','오뚜기열라면'),
('힐러','1600','/imgs/4.jpg','오뚜기힐러'),
('신라면','1500','/imgs/1.jpg','농심신라면'),
('육개장','900','/imgs/2.jpg','농심육개장'),
('열라면','1200','/imgs/3.jpg','오뚜기열라면'),
('힐러','1600','/imgs/4.jpg','오뚜기힐러')
;
COMMIT;

SELECT * FROM goods_info;
SELECT * from user_info;
SELECT * from users;
select count(1) as cnt from users where ui_id = 'test4';

USE study;

CREATE TABLE users(
		ui_num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
		ui_id VARCHAR(30) NOT NULL UNIQUE,
		ui_pwd VARCHAR(30), 
		ui_name VARCHAR(30), 
		ui_email VARCHAR(30),
		ui_credat DATE NOT NULL DEFAULT CURDATE()
);

SHOW DATABASES;
SHOW TABLES;

INSERT INTO users(ui_id, ui_pwd,  ui_email, ui_name) VALUES('test1', 111,  'test1@', '김길동');
INSERT INTO users(ui_id, ui_pwd,  ui_email, ui_name) VALUES('test2', 222,  'test2@', '은김길동');
INSERT INTO users(ui_id, ui_pwd,  ui_email, ui_name) VALUES('test5', 555,  'test5@', '오김길동');
INSERT INTO users(ui_id, ui_pwd, ui_email, ui_name) VALUES('test4', 444, 'test2@', '홍길동');
INSERT INTO users(ui_id, ui_pwd, ui_email, ui_name) VALUES('test3', 123, 'test3@', '박길동');

SELECT * FROM users;
 
SELECT * FROM users WHERE 1=1 
AND ui_name LIKE '%김%';

SELECT * FROM users WHERE 1=1 
AND ui_name LIKE '%김%'
and gi_price = '300'
and gi_credat >= '20210205';

DELETE  FROM users ;
DELETE from users WHERE 1=1 
AND ui_id LIKE '%test4%';


UPDATE users SET ui_name = '삼길동' WHERE 1=1 
AND ui_id LIKE '%test3%';

UPDATE users SET ui_name = '이길동', ui_email = 'test2@test.com'  WHERE  1=1
AND ui_id LIKE 'test2';



SELECT * FROM users 
WHERE Country = '서울';

CREATE DATABASE mystory;
SHOW DATABASES;
USE `mystory`;





CREATE TABLE users(
    ui_num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ui_id VARCHAR(30) NOT null UNIQUE
);

SHOW TABLES;

insert into users(ui_id) VALUES('test1');
insert into users(ui_id) VALUES('test2');
insert into users(ui_id) VALUES('test3');
insert into users(ui_id) VALUES('test4');


DELETE from users WHERE 1=1 
AND ui_name LIKE '%홍길동%';
SELECT * FROM users;

```

# heidisql.com
https://www.heidisql.com/ 
Downloads > Portable-64  > 압축 풀고 
# 접속 세션 만들기 
세션이름 : root.test

# 환경설정 : 로그인 전 > 더보기 > 환경설정 

1. 기본의 폰트 사이즈 변경 : 기본 글꼴 선택 후 폰트 키우기
2. SQL : 단축키 등 재설정 할 수 있음 


# 세션 root.test인경우 
# test 데이터 베이스 생성 
생성되지 않은 경우 물개 아이콘이 선택된 상태에서 왼쪽 탐색창에 마오 > 새로 생성  > 데이터 베이스 생성  > test
CREATE DATABASE `test` 

# table 생성 
1. 생성된 test 테이블 선택 > 왼쪽 탐색창에 마오 > 새로 생성  > table 생성  
   (이미지 11~14 참고)


2. 열을 이미지 11과 같이 추가 한다. 
MariaDB에서 tinyint는 보통 true/false(실제 1/0)을 표현하기 위해 사용 

3. UID에서 마오 > 인덱스 추가 >   Primary Key를 생성

4. CREATE 코드 탭을 선택하면 heidiSQL이 자동으로 생성한 스크립트 확인 
CREATE TABLE `user-table` (
	`uid` VARCHAR(50) NOT NULL COLLATE 'utf8mb3_general_ci',
	`name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`age` INT(3) NULL DEFAULT '0',
	`birthday` DATE NULL,
	`isnosql` TINYINT NULL DEFAULT '0',
	PRIMARY KEY (`uid`)
)
COMMENT='사용자들 테이블'
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;

5. 기본탭으로 돌아와서 저장 버튼 
이미지 14

6. 좌측창의 세션명 > DB명  > 테이블 
   우측창의 호스트 > DB명  > 테이블 > 데이터탭 > 쿼리탭1, 쿼리탭2 확인
 이미지 15번 확인 

# 데이터 입력
이미지 16~
1. 데이터 탭 > 마오 > 행삽입 
   하단의 쿼리 실행문 확인 
2. 2번째 이상 데이터 삽입  행복제(키 미포함)/행복제(키 포함) 
   Duplicate row without keys / Duplicate row with keys  
   키값을 만들지 않고 데이터 복제하여 삽입하는 '행복제(키 미포함)'권장 

# 쿼리창에서 쿼리 실행하기 
1. 테이블 내의 모든 데이터 삭제
TRUNCATE TABLE users_table;
테이블 선택 > 마오 > 테이블 비우기

3. 내용 확인 
3-1. 데이터 테이블을 확인하면 화면 갱신이 즉시 이루어지지 않으므로 화면 갱신은 F5
3-2. 또는 SELECT * from users_table; 결과셋 내용 확인

4. 결과셋 사용하기 
4-1. 결과셋 탭은 여러개 만들기 가능하고 데이터를 선택한 상태에서 ctrl + 휠 화면 확대
4-2. 필드와 필드 사이에서 좌우 화살표 나올때 더블 클릭(엑셀과 같음)
4-3. 여러개 실행문을 선택하고 ▶실행 버튼을 누르면 결과 셋이 실행문 개수 만큼 나타남
   (즉, 명령어가 3개면 탭 3개 표시, 순서대로 표시됨)
   * 다시한개의 명령을 실행 하면 실행탭이 1개만 나타남 


2. 데이터 삽입 
insert into users_table(uid, NAME, age, birthday, isnosql ) 
VALUES(2, 'maria', 22, '1998-01-01', 0);
동시에 여러개 데이터 삽입 
insert into users_table(uid, NAME, age, birthday, isnosql ) VALUES
(2, 'PostgreSql', 21, '1989-01-01', 0),
(3, 'MySql', 22, '1995-02-01', 1),
(4, 'MonogoDB', 22, '2009-03-01', 1),
(5, '아파치 카산드라', 22, '2008-03-01', 0),
(7, 'MariaDB', 22, '2009-03-01', 1),
(6, '오라클', 22, '1977-03-01', 0) ;

SELECT * from users_table;
SELECT * from users_table WHERE uid>4;
SELECT * from users_table WHERE uid<4 AND  isnosql=0;
SELECT * from users_table WHERE uid<4 AND  isnosql=1;

# 결과셋 내보내기 : 이미지 20 참고
SELECT의 결과셋 데이터를 선택 후 > 마오 > 격자행 내보내기
도구 메뉴 > 격자행 내보내기

## 격자행 내보내기 > 옵션 > 
1. 행선택 > 선택 : 1행만 내보내기, 최대 : 모두 내보내기
2. 옵션 > 열이름을 포함 : 체크에 따라 열이름 포함할지 포함하지 않을 지 선택
          SQL쿼리 포함 
3. 출력 형식에 따라 다음 구분자는 선택할 수 있다. 
  특히, Delimited Text 선택하면 다음 모두 확인 가능 
          필드 구분자  ;
          인클로저 "  : 데이터 내에 쌍따옴표가 있는 경우 구분하기 위해 데이터 전체를 "로 감싸준다.
          줄 종결자 \r\n
          NULL 값 NULL : null값을 Null 처리 
 
출력 형식을 Delimited Text  한 경우 (이미지 21) 인 겨우 다음과 같이 출력함 
UID;name;age;birthday;isnosql
2;PostgreSql;21;1998-01-01;0
3;MySql;22;1998-02-01;1
4;MonogoDB;22;1998-03-01;1
5;아파치 카산드라;22;1998-03-01;0
6;jemicom;22;1998-03-01;0

출력형식을 html Table로 선택한 경우 html로 출력함 : 보고서, html 문서 작성시 편리함
출력형식을 JSON로 선택한 경우
{
	"table": "users_table",
	"rows":
	[
		{
			"UID": "2",
			"name": "PostgreSql",
			"age": 21,
			"birthday": "1998-01-01",
			"isnosql": 0
		},
		{
			"UID": "3",
			"name": "MySql",
			"age": 22,
			"birthday": "1998-02-01",
			"isnosql": 1
		},
		{
			"UID": "4",
			"name": "MonogoDB",
			"age": 22,
			"birthday": "1998-03-01",
			"isnosql": 1
		},
		{
			"UID": "5",
			"name": "아파치 카산드라",
			"age": 22,
			"birthday": "1998-03-01",
			"isnosql": 0
		},
		{
			"UID": "6",
			"name": "jemicom",
			"age": 22,
			"birthday": "1998-03-01",
			"isnosql": 0
		}
	]
}

# 데이터베이스를 SQL로 내보내기

# CSV파일 가져오기
컴마로 분리된 데이터들을 모아놓은 텍스트 파일을 테이블로 가져오기

무시할 첫 1줄 : 필요없는 제목 줄 처리 
중복행 처리 
INSERT : 오류
INSERT IGNORE(중복): 중복 되어도 그냥 처리
REPLACE(중복)


# 결과창에서의 복사/선택한 행 복사
행 복사(여러줄 레코드 선택 복사 ) : 
ctrl 또는 shift + 클릭 > 마오 > 선택한 행 복사 (옛날 버전)
ctrl 또는 shift + 클릭 > 마오 > Copy as : 필요한 format 선택 
ctrl 은 떨어져 있는 행 복사 
shift 연속된 행 복사 
떨어져 있는 필드나 열, 연속된 열을 복사할 수는 없다. 
즉 복사는 행단위로만 가능 한다. 

# SQL재구성, 로그창 알아보기
로그를 파일로 저장 
환경설정 > 로그 > 

# SQL 쿼리창에서 문자열 찾기 
1. 쿼리창에서 원하는 텍스트 찾기 
   쿼리창 마오 > 텍스트 찾기(ctrl + F) > Sql 편집기
   옵션 중 변경을 체크하면 찾아 바꾸기 실행
   다음 찾기  : F3

2. 결과 창에서 원하는 텍스트 찾기 
   쿼리창 마오 > 텍스트 찾기(ctrl + F) > 그리드 결과창
   
3. 서버 자체내 개체내에서 원하는 텍스트 찾기 
   검색 메뉴 > 서버내에서 텍스트 찾기 > 텍스트 찾기 탭 : 옵션등을 선택하여 찾기
   결과가 있어야만 결과보기 버튼이 활성화 됨 > 결과보기 선택 > 그리드 탭 으로 표시


# 데이터탭 사용법
   데이터 베이스 선택 > 호스트탭, 데이터베이스탭, 테이블 탭 옆의 데이터 탭

   1. 컬럼 헤더값(필드명)을 통한 오름/내림차순 정렬
   ```
   SELECT * FROM `test`.`users_table` ORDER BY `name` ASC LIMIT 1000;
   SELECT * FROM `test`.`users_table` ORDER BY `name` DESC LIMIT 1000;
   ```

   2. 데이터탭에서의 입력/수정/삭제
   필드명 더블클릭 수정 :엑셀과 같이 수정가능 
   다음과 같은 필드를 수행하는 것임
  ``` 
   UPDATE `test`.`users_table` SET `name`='마리아db' WHERE  `UID`='6' AND `name`='jemicom' AND `age`=22 AND `birthday`='1998-03-01' AND `isnosql`=0 LIMIT 1;
   SELECT `UID`, `name`, `age`, `birthday`, `isnosql` FROM `test`.`users_table` WHERE  `UID`='6' AND `name`='마리아db' AND `age`=22 AND `birthday`='1998-03-01' AND `isnosql`=0 LIMIT 1;
   ```

   3. 행삽입 후 데이터 입력시 다음 수행
   ```
   INSERT INTO `test`.`users_table` (`name`) VALUES ('test');
   SELECT `UID`, `name`, `age`, `birthday`, `isnosql` FROM `test`.`users_table` WHERE  `UID` IS NULL AND `name`='test' AND `age`=0 AND `birthday` IS NULL AND `isnosql`=0 LIMIT 1;
   UPDATE `test`.`users_table` SET `UID`='5', `age`='10', `birthday`='2022-08-17' WHERE  `UID` IS NULL AND `name`='test' AND `age`=0 AND `birthday` IS NULL AND `isnosql`=0 LIMIT 1;
   SELECT `UID`, `name`, `age`, `birthday`, `isnosql` FROM `test`.`users_table` WHERE  `UID`='5' AND `name`='test' AND `age`=10 AND `birthday`='2022-08-17' AND `isnosql`=0 LIMIT 1;
   ```
   3. 필터를 통한 WHERE절 추가 
     필터 탭 선택  > birthday IN(20220817) 또는 birthday IN('2022-08-17')
     필터가 수행되고 다음과 같이 sql 실행
     청소버튼을 누르면 원래대로 복귀

```
   SELECT * FROM `test`.`users_table` WHERE birthday IN(20220817)

 ORDER BY `name` DESC LIMIT 1000;
SHOW TABLE STATUS LIKE 'users_table';
```
  필터 탭 선택 :  age < 10 
```
   SELECT * FROM `test`.`users_table` WHERE age <= 10
 ORDER BY `age` DESC LIMIT 1000;
 ```


   4. 데이터탭에서 조회되는 레코드의 페이징 기능

# select 
SELECT * FROM Customers;
SELECT Country FROM Customers; 
SELECT DISTINCT Country FROM Customers; 
// DISTINCT는 중복값을 제거합니다.

//출력 결과 정렬합니다. 
- 오름차순 : ASC(기본, 작은 수에서 큰 수로, Ascending)
- 내림차순 : DESC(큰 수에서 작은 수로, Descending)
SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Customers ORDER BY CustomerName ASC;

//개행을 하여도 괜찮지만 마지막에 세미콜론 잊지마세요.
SELECT * 
FROM Customers 
ORDER BY CustomerID DESC;
SELECT * 
FROM Customers 
ORDER BY CustomerID ASC;

// 별칭을 정합니다. 기존 Table의 값은 변하지 않습니다.
SELECT CustomerID AS 회원이름
FROM Customers;
SELECT CustomerID AS 회원이름, Country AS 나라
FROM Customers;
SELECT CustomerID 회원이름, CustomerName 이름 FROM Customers;


SELECT NAME AS 이름  from users_table;
SELECT  uid AS 번호, NAME AS 이름  from users_table;

// 산술 연산 
SELECT 10+20;
SELECT 10-2;
SELECT 10*2;
SELECT 10/2;
SELECT CustomerId + 100 FROM Customers; // 아이디 + 100 
SELECT UID + 100 FROM users_table;
SELECT UID % 2 FROM users_table;  // 아이디번호가 홀수/짝수인지 확인
SELECT ProductName AS 제품이름, Price AS 기존가, Price*0.2 AS 할인된가격, Price*0.8 AS 최종가 
FROM Products;
SELECT Country || ' ' || City || ' ' || Address AS 주소 FROM Customers; 
// || 문자열로 주소를 합치고 출력
// Oracle에서는 ||, MsSQL은 +, MySQL은 공백으로 연결 가능. CONCAT함수는 공통으로 사용 가능합니다. 
// 문법이 조금 상이하다 정도로 기억해주세요.
SELECT ProductName AS 제품이름, Price || '가 ' || (Price*0.2) || '할인되어 ' || (Price*0.8) || '에 판매합니다!' AS 홍보문구
FROM Products;


# 논리 연산
우선순위는 NOT, AND, OR입니다. True는 1로, False는 0으로, and는 곱으로, or는 덧셈으로 이해하시면 계산이 쉽습니다.
SELECT 1 AND 0;
SELECT 1 OR 0;
SELECT NOT 0;
SELECT true AND false;
SELECT true OR false;
SELECT NOT false;

# AND
SELECT *
FROM Customers 
WHERE CustomerID LIKE '1%'
AND City = 'London';

# OR
SELECT *
FROM Customers 
WHERE CustomerID LIKE '1%'
AND City = 'London' OR City = 'Berlin';

SELECT *
FROM Customers 
WHERE CustomerID LIKE '1%'
AND (City = 'London' OR City = 'Berlin');

SELECT * FROM  Customers 
where customerId > 50 or city = 'London';

SELECT * FROM  Customers 
where customerId > 50 or city != 'London';

# NOT : NOT() , !=  , <> 
SELECT *
FROM Customers 
WHERE CustomerID LIKE '1%'
AND NOT(City = 'London' OR City = 'Berlin');

SELECT *
FROM Customers 
WHERE CustomerID LIKE '1%'
AND (City != 'London' AND City != 'Berlin');

SELECT *
FROM Customers 
WHERE CustomerID LIKE '1%'
AND (City <> 'London' AND City <> 'Berlin');

# BETWEEN 연산 : A AND B : A와 B를 포함한 사이의 값
SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerID BETWEEN 30 AND 50;

SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerID >= 30 AND CustomerID <= 50;

# IN 연산 : IN A : A안에 값과 일치하는 값을 조회
SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerID IN (10, 20, 30);


# LIKE 연산

- LIKE '비교문자'
    1. 비교 문자와 형태가 일치(%(모든 문자), _(한 글자) 사용)
    2. 대소문자를 안가림
    3. `%`는 와일드카드

//  데이터가 Paullab, Paultest, Paulcode가 있다면 모두 검색
SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerName LIKE 'Paul%';

// 언더바가 3개라면 위 데이터 중 Paullab 만 출력
SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerName LIKE 'Paul___';

// Paul이 들어가는 모든 값
SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerName LIKE '%Paul%';

SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerID LIKE '1%';

## IS NULL :  NULL 값을 갖는 값(0은 값이 있는 것입니다.)
SELECT CustomerID, CustomerName
FROM Customers 
WHERE CustomerID IS NULL;

- 문제  1번
    
    국적이 한국이면서, 제주시에 살고 있는 사람을 구해주세요. 기본 데이터에 해당 데이터가 없다면, 위에 코드(INSERT)를 다시 실행시켜 주세요.
    SELECT * FROM Customers WHERE Country='korea' AND City='jejusi';

- 문제 2번
    
    PostalCode값이 null 값인 사람을 구해주세요.  
    /* SELECT * FROM Customers WHERE PostalCode=''; */
SELECT * FROM Customers WHERE PostalCode IS NULL;  

## Null Values 찾아내기

위 실습에서 일부러 몇 개의 값을 입력하지 않고 null값을 찾아보세요. 위에서 데이터를 삽입한 것 중 명시하지 않은 것들은 null 값으로 들어갔기 때문에 ContactName에 조회가 가능합니다.
SELECT * 
FROM Customers
WHERE ContactName IS NULL;

SELECT * 
FROM Customers
WHERE ContactName IS NOT NULL;


# 함수 : 미리 정의된 기능 모음
SELECT UPPER('Hello World');
SELECT lower('Hello World');
SELECT substr('Hello World',1, 5);
SELECT substr('Hello World',7, 5);
SELECT substr('Hello World', -5, 5); // 뒤에부터 인덱싱
SELECT substr('Hello World',-5);  // 뒤에부터 인덱싱할때는 개수 생략하면 끝까지 추출
SUBSTR(CustomerName, 0, 6); // 뒤에 자름
SUBSTR(CustomerName, 6); // 앞에 자름

SELECT count('Hello World',1, 5);  // 가지고 있는 값의 개수
SELECT length('Hello World',1, 5);  // 문자열 길이
SELECT REPLACE('Hello World', 'World', 'sql'); // 정확히 일치해야 함 
SELECT CONCAT('Hello' , ' SQL');
SELECT CURDATE(); //=> 오라클  SELECT DATE() + 10;
SELECT CURTIME();
SELECT max(UID) FROM users_table; 
SELECT min(UID) FROM users_table; 
SELECT count(UID) FROM users_table; 
SELECT avg(UID) FROM users_table; 
SELECT CHAR(65) || CHAR(65); // error


# 문자열의 길이를 출력하고 이름의 6자리를 *로 처리
SELECT CustomerId, CustomerName, LENGTH(CustomerName) AS 이름길이,
		SUBSTR(CustomerName, 6) AS 추출한이름,
		REPLACE(CustomerName,  SUBSTR(CustomerName, 0, 6), '******') AS 대체이름
from Customers;        
      // SUBSTR(CustomerName, 0, 6); 앞에 별표 채움
      // SUBSTR(CustomerName, 0, 6); 뒤에 별표 채움


전체 제품의 개수를 구해주세요.
/* SELECT COUNT(ProductID) FROM Products; */
SELECT COUNT(*) FROM Products;  // 보다 다음 표현 사용 
SELECT COUNT(ProductName) FROM Products;

값의 평균을 구해주세요.(함수를 사용해주세요.)
SELECT AVG(Price) FROM Products;

제품 이름이 'A'로 시작하면서 가격이 평균 이상인 제품을 구해주세요. 아래와 같이 작성하면 애러가 발생됩니다. 이유를 설명하고, 코드를 작성하세요.

/* SELECT * FROM Products WHERE ProductName LIKE 'A%' AND Price > AVG(Price); */

# TOP과 LIMIT : 최 상단 3개의 행(row)을 보는 방법
SELECT TOP 3 * FROM Customers;
SELECT TOP 10 PERCENT * FROM Customers;


# 조건문
- Oracle의 경우에는 DECODE, CASE WHEN
- MsSQL의 경우에는 CASE WHEN
- MySQL의 경우에는 IF, CASE WHEN
- CASE WHEN 조건 THEN 참일경우_실행구문 ELSE 거짓일경우_실행구문 END


SELECT CASE WHEN 'good' = 'job'  THEN  'hello' ELSE 'world' END; 
// world
SELECT CASE WHEN 'good' = 'good'  THEN  'hello' ELSE 'world' END; 
// hello


SELECT CustomerID, City,
CASE
    WHEN CustomerID > 50 THEN '50번을 넘음!'
    WHEN City='London' THEN '도시가 런던!'
    ELSE '50번 이하임!'
END AS '출력 문구'
FROM Customers;

# 주석
아래 주석 구문은 쿼리를 설명하거나 쿼리를 잠시 보류하는 용도로 사용할 수 있습니다.

-- 해당 구문은 전체 고객 정보를 조회합니다.
SELECT * FROM Customers;

-- 해당 구문은 전체 고객 정보를 조회합니다.
SELECT * FROM Customers --WHERE CustomerID > 50;

/*
여러 줄 주석입니다.
SELECT City FROM Customers;
*/
SELECT * FROM Customers;

## JOIN

기준을 가지고 데이터를 합칩니다. 여기서는 `INNER JOIN`만 사용해보도록 하겠습니다.
# INNER JOIN : 교집합
# LEFT JOIN : 왼쪽 테이블로 합침
# RIGHT JOIN : 오른쪽 테이블로 합침
# FULL OUTER JOIN :   합집합

-- w3school 기본 예제입니다.
-- OrderID는 Orders라는 table에 있습니다.
-- CustomerName는 Customers라는 table에 있습니다.
-- OrderDate는 Orders라는 table에 있습니다.
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
-- 기준 table은 Orders입니다.
FROM Orders
-- INNER JOIN을 할 table은 Customers입니다.
INNER JOIN Customers
-- INNER JOIN의 기준은 두 table 모두 있는 CustomerID입니다.
ON Orders.CustomerID=Customers.CustomerID;

## UNION

데이터를 결합합니다.

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers;


SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
