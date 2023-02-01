Mysql  : workbanch  download
https://www.mysql.com/downloads/ 
최하단에 MySQL Community (GPL) Downloads »
MySQL Workbench 선택

다운로드 최종링크 https://dev.mysql.com/downloads/workbench/
https://dbeaver.io/download/

// 권한 주기 
CREATE USER study@localhost IDENTIFIED BY 'study1234';
GRANT ALL PRIVILEGES ON *.* TO 'study'@localhost IDENTIFIED BY 'study1234';
flush privileges;  // commit

///모든 권한 
create user dooo@'%' identified by ＇root!`;
grant all privileges on dooodb.* to 'root'@'%'; 
flush privileges;  // commit

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

# select 
- select 칼럼명1, 칼럼명2, ...  from 테이블명
select * from employees;
select * from  employees where gender = 'F';

select * from employees order by hire_date; // 오름차순 
select * from employees order by hire_date desc; // 내림차순 
select * from employees order by first_name, emp_no desc;
 // 이름은 오름 차순, 번호는 내림차순이나 잘 안됨 


select * from employees where emp_no not in ( 10027, 10009, 10012);
// 아닌 것만 찾기 
select * from employees where emp_no in ( 10027, 10009, 10012);
// emp_no 가 10027, 10009, 10012 인 것만 찾기 
// 또는 if 처럼
select * from employees 
where emp_no = 10027 or emp_no =10009 or emp_no = 10012 ;

// 10015 > emp_no > 10026
select * from employees 
where emp_no > 10015  and emp_no < 10026 ;
또는 
select * from employees 
where emp_no between 10015  and 10026 ;

# 와일드 문자 
// % : n 개의 문자 대체
select * from employees 
where first_name like '%c%';
// _ : 1개의 문자 대체
select * from employees
    -> where first_name like '__l%'; // 3번째 문자가 l

// 아닌 것 찾기 
select * from employees 
where first_name not like '%c%';
// _ : 1개의 문자 대체
select * from employees
    -> where first_name not like '__l%'; // 3번째 문자가 l

//중복 제거 
select * from employees where first_name = '길동';
select count(first_name) from employees where first_name = '길동';
select distinct(first_name) from employees where first_name = '길동';
select count(distinct(first_name)) from employees where first_name = '길동';


// 사용자별 성별 오름차순 정렬
select gender, count(*) as cnt from  employees 
group by gender 
order by cnt asc; 

select gender, count(*) as cnt from  employees 
group by gender 
order by cnt desc; 

# update 

update employees set first_name = '길동' where emp_no = 10009;

# update 서브쿼리
update employees set birth_date = replace(substring(birth_date, 3), '-', '')   
where emp_no>10030 and birth_date is not null; 

// 10009번의 이름을 10003에 셋팅함 
update employees set first_name = (
    select first_name from employees where emp_no=10009
    ) where emp_no = 10003;

// id, userid,userpwd 필수 입력이 제외할 수 없음 
insert into  users(id, userid,userpwd) 
    select first_name, last_name, first_name from employees
    where emp_no <  10009;

delete from users where usernum >10;
delete from users where usernum in ( 5, 6, 8);



# employees
# select ~ from 테이블

1. 모든 정보 가져오기  
select 칼럼 from 테이블 ;

select * from employees;  // 사원의 모든 정보 가져오기 ;
select * from departments;  // 부서 정보
select * from dept_manager;  // 매니져 정보
select * from titles;        // 직함정보 

2. 일부 컬럼 출력 : 검색 속도 향상 
select 칼럼1, 칼럼2, [...]  from 테이블 ;
select emp_no, first_name from employees;  // 사원의 사원번호, 이름 ;
select emp_no, birth_date, gender from employees;  // 사원의 사원번호, 생년월일, 성별
select dept_no, dept_name  from departments;  // 부서 정보의 부서번호, 부서이름 // 결국 모든 정보 출력 
select emp_no, salery from saleries;        // 각 사원의 사원번호, 급여액 출력
select emp_no,  title  from titles;  // 사원의 직함번호, 직함이름 출력

# 산술 연산자 : 대부분 코드에서 처리함
select 20+20;
select 20-20;
select 20*20;
select 20/20;

select salary, salary+100, salary-100, salary* 100 from salaries; 
각사원의 급여를 10% 인상된 금액을 가져온다. 
select emp_no, salary, salary*1.1 from salaries; 
각사원의 급여를 10% 인하된 금액을 가져온다. 
select emp_no, salary, salary*0.9  from salaries; 

# 문자열연산 
select first_name+100, first_name*100, first_name-100 from employees;  // 문자열인 경우 숫자만 나옴거나 0
select birth_date, replace(substring(birth_date, 3), '-', '') from employees;
 1953-09-02 | 530902


# 중복제거 
근무 부서 테이블에서 중복제거한 후 부서번호 출력 
select distinct dept_no from dept_emp;
각사원의 직함을 중복제거한 후 출력 
select distinct title from titles;

# 조건 사용하기 
= > < >= <= <>(같지않다)

## d005 부서 매니저의 사원의 사원번호, 부서번호 출력 
select emp_no, dept_no from dept_manager; 모든 관리자 번호 확인

select emp_no, dept_no from dept_manager
where dept_no ='d005';

## 부서가 d003이 아닌 매니저 사원의 사원번호, 부서번호 출력
select emp_no, dept_no from dept_manager
where dept_no <> 'd003';

## 급여 >= 150000  사원의 사원번호, 급여액 출력 
select emp_no, salary from salaries
where salary >= 150000;

## 급여 <= 40000  사원의 사원번호, 급여액 출력 
select emp_no, salary from salaries
where salary <= 40000;


# 날짜 데이터 조회
## 1986년 이후에 입사한 사원들의 정보 출력

select emp_no, hire_date, first_name, last_name
from employees
where hire_date >= '1986-01-01';

## 1990이후  매니저가 된 사원의 사원번호, 부서번호, 매니저 시작일을 출력 
select emp_no, dept_no, from_date 
from dept_manager
where from_date >= '1990-01-01';

## 1990이전 입사한 사원의 사원번호, 부서번호, 입사일을 출력 
select emp_no, hire_date 
from employees
where hire_date < '1990-01-01';

# 논리 연산자 
두개 이상의 조건문을 작성할 때 사용
and, or, not 

- d001 부서의 메니저 중에서 1990년 이후부터 매니저인 사원의 사원번호, 부서번호, 매니저 시작 날짜를 조회
select emp_no, dept_no, from_date
from dept_manager
where dept_no='d001' and from_date >= '1990-01-01'; 

- 1990년 이후에 입사한 남자 사원의 사원번호, 성별, 입사일을 조회
select emp_no, gender, hire_date 
from employees
where hire_date >= '1990-01-01' and gender='M';

- 수령일 기준 1990년 이후에 60000이상의 급여를 받는 사원의 사원번호, 급여, 급여 수령시작일을 조회
select emp_no, salary, from_date from salaries
where salary >= 60000 and from_date>= '1990-01-01';

- d001 부서와 d002 부서 매니저의 사원번호, 부서번호  조회
select emp_no, dept_no from dept_manager
where dept_no = 'd001' or dept_no = 'd002';


- 직함이 Staff인 사원과 Engineer인 사원의 사원번호, 직함을 조회
select emp_no, title from titles
where title = 'Staff' or title ='Engineer';

- d003 부서의 매니저가 아닌 매니저의 사원번호, 부서번호  조회

select emp_no, dept_no from dept_manager
where dept_no  <> 'd003';
select emp_no, dept_no from dept_manager
where not dept_no  = 'd003';

# Between 조건
컬럼의 범위를 조건으로 사용할 때 
and 대신 사용하지만 모든 and를 대치할 수 없음 
급여가 60000 이상 70000이하인 사원의 사원번호, 급여를 가져온다. 
select emp_no, salaryfrom salaries
where salary >= 60000 and salary <= 70000;

select emp_no, salaryfrom salaries
where salary between 60000 and 70000;

# in 조건
지정된 컬럼의 값이 특정 값에 해당되는 조건을 만들때 사용 
or 처럼 사용되나 모든 or를 대신할 순 없음 

- d001 부서와 d002 부서 매니저의 사원번호, 부서번호  조회
select emp_no, dept_no from dept_manager
where dept_no = 'd001' or dept_no = 'd002';

select emp_no, dept_no from dept_manager
where dept_no in ('d001', 'd002');


# 정렬
데이터를 조회할 때 오름차순 또는 내림차순 정렬
Order by 컬럼명 asc : 오름차순 정렬, asc는 생략
Order by 컬럼명 desc : 내림차순 정렬, 
모든 데이터 타입의 정렬 가능 

사원의 번호과 급여를 가져온다 급여를 기준으로 오름차순
select  emp_no, salary
from  salaries
order by  salary asc;  // asc 생략

사원의 번호과 급여를 가져온다 급여를 기준으로 내림차순
select  emp_no, salary
from  salaries
order by  salary desc;

사원의 번호과 이름를 가져온다 급여를 기준으로 내림차순
select  emp_no, first_name
from  employees
order by  first_name asc;

사원의 번호과 이름를 가져온다 급여를 기준으로 오름차순
select  emp_no, first_name
from  employees
order by  first_name desc;

사원의 번호과 입사일을 가져온다 급여를 기준으로 오름차순
select  emp_no, hire_date
from  employees
order by  hire_date asc;

사원의 번호과 입사일을 가져온다 급여를 기준으로 내림차순
select  emp_no, hire_date
from  employees
order by  hire_date desc;


# 문자열함수 
컬럼에 저장되어 있는 문자열에 대한 작업 가능
## CONCAT(문자열, 문자열, 문자열 ) : 여러개의 문자열을 하나로 결함 
select concat('Hello', 'mariaDB');


## INSERT(문자열, 시작위치, 길이, 새로운 문자열) : 
문자열의 시작위치부터 길이만큼 문자열을 제거하고 새로운 문자열 삽입
js의 splite 사용 
select INSERT('Hello', 3 , 2, 'mariaDB' );
select INSERT('Hello', 3 , 0, 'mariaDB' );
select INSERT('Hello', 0 , 0, 'mariaDB' );

## REPLACE(문자열, 기존문자열, 새로운 문자열) :
기좀 문자열을 찾아 새로운 문자열로 교체
select REPLACE('Hello mariaDB', 'mariaDB', 'Oracle' ); 

## INSTR(문자열1,  문자열2 ) :
기좀 문자열을 찾아 새로운 문자열로 교체
리턴이 문자열이 아니라 위치를 반환 
js의 indexOf()와 같으나 문자열이 없는 경우 -1 대신 0을 반환 

select INSTR('Hello mariaDB', 'mariaDB' );
select INSTR('Hello mariaDB', 'Oracle' );

## LEFT(문자열, 개수 ): 문자열 왼쪽에서 문자열 추출
## RIGHT(문자열, 개수 ): 문자열 오른쪽에서 문자열 추출
## MID(문자열, 시작위치, 개수 ): 문자열 지정된 시작위치에서 문자열 추출
## SUBSTRING(문자열, 시작위치, 개수 ): 문자열 지정된 시작위치에서 문자열 추출, MID 처리와 같음 

select LEFT('Hello mariaDB', 5 );
select RIGHT('Hello mariaDB', 5 );
select MID('Hello mariaDB', 5 , 5);
select SUBSTRING('Hello mariaDB', 5 , 5); 


## 기타 문자열처리
## LTRIM(문자열) : 왼쪽 공백제거
## RTRIM(문자열) : 오른쪽 공백제거
## TRIM(문자열) : 왼쪽, 오른쪽 공백제거 
## LCASE(문자열), LOWER(문자열) : 소문자로 변경
## UCASE(문자열), UPPER(문자열) : 대문자로 변경 
## REVERSE(문자열)  : 문자열을 꺼꾸로 재배치 

select concat('[', ltrim('           hello             '), ']');
select concat('[', rtrim('           hello             '), ']');
select concat('[', trim('           hello             '), ']');
select LCASE('heLLo');
select LOWER('heLLo');
select UCASE('heLLo');
select UPPER('heLLo');
select REVERSE('heLLo');

# 사원의 이름을 성과 이름을 하나의 문자열로 조회
select   concat(first_name,' ', last_name)
from  employees ;


# Group By Having 
select문을 통해 가져온 모든 행을 개발자가 정한 기준에 따라 그룹으로 나눌수 있음 
그룹 함수를 사용하면 행의 수, 총합, 평균, 최대, 최저 값을 조회가능

select  *  from  employees ;
select  count(*)  from  employees ;

## 사원수를 성별로 조회
select  gender, count(*)  
from  employees 
group by gender;

``` 결과
+--------+----------+
| gender | count(*) |
+--------+----------+
| M      |       25 |
| F      |       12 |
+--------+----------+
```

## 각 부서에 근무하고 있는 사원의 수 조회
현재 근무중인 사원은 to_date가 9999-01-01임

select  dept_no,  count(*)  
from  dept_emp 
where to_date='9999-01-01'
group by dept_no;

``` 결과
+---------+----------+
| dept_no | count(*) |
+---------+----------+
| d0001   |       25 |
| d0002   |       25 |
| d0003   |       25 |
| d0004   |       25 | 
+---------+----------+
```

## 각 부서별 과거의 매니저의 수 조회
select  dept_no,  count(*)  
from  dept_manager 
where to_date <> '9999-01-01'
group by dept_no;

``` 결과
+---------+----------+
| dept_no | count(*) |
+---------+----------+
| d0001   |       25 |
| d0002   |       25 |
| d0003   |       25 |
| d0004   |       25 | 
+---------+----------+
```
## 급여 수령 시작일별 급여 총합 조회
select  from_date, sum(salary)  
from  salaries  
group by from_date;

``` 결과
 
```

## 급여 수령 시작일별 급여 평균 조회
select  from_date, avg(salary)  
from  salaries  
group by from_date;

## 급여 수령 시작일별 급여 최고액 조회
select  from_date, max(salary)  
from  salaries  
group by from_date;

## 급여 수령 시작일별 급여 최저액 조회
select  from_date, min(salary)  
from  salaries  
group by from_date;

# having
group by로 그룹을 지정한 경우 조건은 having절로만든 조건에 맞는 데이터만 추출

### 10만명이상이 사용하고 있는, 직함의 이름과 직원의 수를 조회
select  titie, count(*) 
from  titles
group by title;

select  titie, count(*) 
from  titles
group by title
having count(*) >= 1000000;

### 5만명이상이 사용하고 있는, 직함의 이름과 직원의 수를 조회
select  dept_no, count(*) 
from  dept_emp
group by dept_no;

select  dept_no, count(*) 
from  dept_emp
group by dept_no;
having count(*) >= 500000;

# join
## 데이터 중복의 최소화
데이터베이스에서 가장 중요한 부분은 데이터를 조회시간의 최소화 
저장된 데이터의 총량이 크면 클수록 조회시간이 오래 걸리므로 
데이터의 중복을 최소화 하여 데이터를 바르게 조회하는 것이 목적 

이러한 이유로 데이터를 여러개의 테이블로 분리저장 

이때 분리시킨 데이터를 조회할 때 하나의 테이블로 join하는 일이 필요 
여러 테이블을 join할때는 테이블의 이름을 , 로 구분하여 작성하고 
각 테이블의 컬러명을 기술하여 주면 원하는 데이터를 조회할 수 있다. 

select 칼럼, 칼럼, 칼럼
from 테이블1, 테이블2

### 각 사원들의 사원번호, 근무 부서번호, 근무 부서 이름을 조회하되
사원번호를 기준으로 오름차순 정렬 

select  emp_no, dept_no, dept_name
from departments, dept_emp; 
=>
select  dept_emp.emp_no, dept_emp.dept_no, departments.dept_name
from departments, dept_emp; 
이름이 길다면 별명을 사용 
=>
select  table2.emp_no, table2.dept_no, table1.dept_name
from departments table1, dept_emp table2; 

=>
select  table2.emp_no, table2.dept_no, table1.dept_name
from departments table1, dept_emp table2
order by table2.emp_no;

=>  join 사용하면 다:다 관계로 조회되어 잘못된 데이터를 조회 
select  table2.emp_no, table2.dept_no, table1.dept_no, table1.dept_name
from departments table1, dept_emp table2 
order by table2.emp_no;

=> 완료
select  table2.emp_no, table2.dept_no, table1.dept_no, table1.dept_name
from departments table1, dept_emp table2
where table1.dept_no = table2.dept_no
order by table2.emp_no;

### 각 사원들의 사원번호, first_name, 근무 부서 번호를 조회
select a1.emp_no, a1.first_name, a2.dept_no 
from  employees a1, dept_emp a2
where a1.emp_no =  a2.emp_no;

### 각 사원들의 사원번호, first_name, 현재 받고 있는 급여를 조회
select a1.emp_no, a1.first_name, a2.salary 
from  employees a1, salaries a2
where a1.emp_no =  a2.emp_no and a2.to_date='9999-01-01';

### 각 사원들의 사원번호, first_name, 부서의 이름을 조회
select a1.emp_no, a1.first_name, a2.dept_name 
from  employees a1, dept_emp a2,  department a3,
where a1.emp_no =  a2.emp_no and a2.dept_no = a3.dept_no;


# 데이터베이스 구성 
  데이터베이스 + 뷰 + 인덱스 + 스토어드 프로시저
# 뷰 : 가상의 테이블 
  실제가 없음 , 바로가기 아이콘 같음 , 원본 데이터는 보호하기 위함
# 인덱스 : 데이터 조회시 빨리 처리할 수 있도록 도와 주는 기능 
  책의 목차와 같은 기능 
  실체가 없음 
# 스토어드 프로시져
  에플리케이션처럼 만들 수 있음 
  if, for 등을 사용하거나 함수로 만들 수 있음 


 
# house 유형
CREATE TABLE `mystory`.`house_type` (
    `code` TEXT NULL DEFAULT NULL , 
    `type` VARCHAR(10) NULL DEFAULT NULL ) 
ENGINE = InnoDB;

# insert
INSERT INTO `house_type`(`code`, `type`) VALUES ('O','오피스텔');
INSERT INTO `house_type`(`code`, `type`) VALUES ('B','빌라');
INSERT INTO `house_type`(`code`, `type`) VALUES ('A','아파트');
INSERT INTO `house_type`(`code`, `type`) VALUES ('D','단독주택');

# house_lente
create table house_lente( 
    num INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code varchar(10) not null, 
    lente_pay int, 
    lent_duration int, 
    house_type varchar(10) 
);
ALTER TABLE house_lente AUTO_INCLREMENT=1000;
// 나중에 increment
SET @@auto_increment_increment=3;
// 증가값이 ++1이 아니라 +=3 // 1003, 1006..

# insert
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('O-A15','600');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('B-G20','800');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('A-U25','1000');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('D-K30','1200');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('O-B15','500');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('A-U25','1100');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('B-G20','750');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('D-K30','1250');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('A-U25','1200');
INSERT INTO `house_lente`(`code`, `lente_pay`) VALUES ('O-K15','450');

# select
select code from house_lente;
select substr(code, 4, 2) from house_lente;
select substr(code, 1, 1) from house_lente;

select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 1)

# update
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 2) where num = 2;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 3) where num = 3;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 4) where num = 4;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 5) where num = 5;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 6) where num = 6;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 7) where num = 7;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 8) where num = 8;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 9) where num = 9;
UPDATE `house_lente` SET `lent_duration`=(select substr(code, 4, 2) from house_lente where num = 10) where num = 10;

# update
UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 1) )
where num = 1;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 2) )
where num = 2;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 3) )
where num = 3;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 4) )
where num = 4;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 5) )
where num = 5;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 6) )
where num = 6;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 7) )
where num = 7;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 8) )
where num = 8;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 9) )
where num = 9;

UPDATE `house_lente` SET house_type = 
(select type from house_type where code = 
(select substr(code, 1, 1) from house_lente where num = 10) )
where num = 10;
