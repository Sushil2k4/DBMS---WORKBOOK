DROP TABLE IF EXISTS EMP;
DROP TABLE IF EXISTS DEPT;

CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50),
    LOC VARCHAR(50)
);

CREATE TABLE EMP (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50),
    JOB CHAR(10),
    MGR INT,
    HIREDATE DATE,
    SAL INT,
    COMM INT,
    DEPTNO INT,
    FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO)
);

-- Confirm the table creation of DEPT
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'DEPT';

-- Confirm the table creation of EMP

SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'EMP';

-- List name of the tables created by the user

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
AND table_type = 'BASE TABLE'
