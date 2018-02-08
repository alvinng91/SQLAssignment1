select * from project;
select * from employee;
select emp_name from employee where EMP_STATUS='C';
select * from employee where EMP_JOIN_DATE > TO_DATE('01-Nov-2006', 'DD-Mon-YYYY');
select e.* from employee e left OUTER JOIN project_allocation pa on e.empno = pa.empno where pa.project_code = 'P003';
select * from project where PROJECT_END_DATE is null;
select * from employee e left outer join project_allocation pa on e.empno = pa.empno where pa.EMP_PROJ_RELEASE_DATE is not null and pa.PROJECT_CODE = 'P002';
select (project_end_date - project_start_date) as "Days taken" from project where PROJECT_CODE = 'P001';
select project_code, empno, (NVL(emp_proj_release_date, trunc(sysdate))-emp_proj_alloc_date) "Days taken" from project_allocation;