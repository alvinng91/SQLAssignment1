CREATE TABLE employee (
    empno           INT PRIMARY KEY,
    emp_name        VARCHAR(15) NOT NULL,
    emp_join_date   DATE DEFAULT ( SYSDATE ),
    emp_status      CHAR(1) CHECK ( emp_status IN (
        'P',
        'C',
        'R'
    ) )
);

CREATE TABLE project (
    project_code          varchar(255),
    project_description   varchar(255) UNIQUE NOT NULL,
    project_start_date    DATE NOT NULL,
    project_end_date      DATE
);

CREATE TABLE project_allocation (
    project_code            varchar(255),
    empno                   INT,
    emp_proj_alloc_date     DATE,
    emp_proj_release_date   DATE
);