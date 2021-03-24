
CREATE TABLE Titles (
    title_id varchar NOT NULL  PRIMARY KEY,
    title varchar   NOT NULL	
);

SELECT * 
FROM Titles;

CREATE TABLE Employees (
    emp_no int NOT NULL PRIMARY KEY,
    emp_title_id varchar NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES Titles (title_id)	
);

SELECT * 
FROM Employees;

CREATE TABLE Departments (
    dept_no varchar NOT NULL PRIMARY KEY,
    dept_name varchar NOT NULL  
);

SELECT * 
FROM Departments;

CREATE TABLE Dept_Emp (
    emp_no int NOT NULL,
    dept_no varchar NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES Employees (emp_no)	
);

SELECT * 
FROM Dept_Emp;

CREATE TABLE Dept_Manager (
    dept_no varchar NOT NULL,
    emp_no int   NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments (dept_no)
);

SELECT * 
FROM Dept_Manager;

CREATE TABLE Salaries (
    emp_no int NOT NULL PRIMARY KEY,
    salary int NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES Employees (emp_no)
);

SELECT * 
FROM Salaries;
