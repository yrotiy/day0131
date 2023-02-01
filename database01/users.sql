CREATE TABLE users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    userid VARCHAR(30) NOT null UNIQUE,
    username varchar(30) ,
    userpwd VARCHAR(70) NOT null
);

INSERT INTO users(userid, userpwd, username) VALUES('test1', 12345, '김길동');
INSERT INTO users(userid, userpwd, username) VALUES('test2', 12345, '은길동');
INSERT INTO users(userid, userpwd, username) VALUES('test5', 12345, '오길동');
INSERT INTO users(userid, userpwd, username) VALUES('test4', 12345, '홍길동');
INSERT INTO users(userid, userpwd, username) VALUES('test3', 12345, '박길동');

SELECT * FROM users WHERE  username LIKE '%김%';
   
UPDATE users SET username = '삼길동' WHERE   userid LIKE '%test3%';
UPDATE * from users mynum = mod(id, 2);
DESC users;

SELECT * FROM users;

DELETE from users  ;  // 테이블 내의 모든 데이터를 삭제하므로 유의;

DELETE from users WHERE 1=1  AND ui_id LIKE '%test4%';
// test4를 포함한 데이터 삭제 
DELETE from users where usernum in ( 5, 6, 8);
    
   
# ALTER
ALTER Table [ add | Modify | Change | Drop ] column 칼럼명 ; 
ALTER table users add column mynum bit not null default 0; 
// 기본값이 있는 것이 좋음 

// 2로 나눈 나머지 값으로 셋팅 ;
ALTER table users add column userpwd varchar(50) ; 
ALTER table users modify column userpwd varchar(100) ;