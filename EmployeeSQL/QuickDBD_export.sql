-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- QuickDBD Code to create Table Schema for an Employee Database
CREATE TABLE "departments" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "dept_name" text   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "emp_titles" (
    "title_id" VARCHAR(5)   NOT NULL,
    "title" text   NOT NULL,
    CONSTRAINT "pk_emp_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR(5)   NOT NULL,
    "birth_date" date   NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "sex" CHAR(1)   NULL,
    "hire_date" date   NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dep_employees" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(4)   NOT NULL,
    CONSTRAINT "pk_dep_employees" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "dep_managers" (
    -- Leave the possibility that a department doesn't have a manager
    "dept_no" VARCHAR(4)   NOT NULL,
    "emp_no" int   NULL,
    CONSTRAINT "pk_dep_managers" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "emp_salaries" (
    "emp_no" int   NOT NULL,
    "salary" money   NOT NULL,
    CONSTRAINT "pk_emp_salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "emp_titles" ("title_id");

ALTER TABLE "dep_employees" ADD CONSTRAINT "fk_dep_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dep_employees" ADD CONSTRAINT "fk_dep_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dep_managers" ADD CONSTRAINT "fk_dep_managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dep_managers" ADD CONSTRAINT "fk_dep_managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "emp_salaries" ADD CONSTRAINT "fk_emp_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

