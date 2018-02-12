select emp.first_name||' '||emp.last_name "NAME", dept.department_id, dept.department_name from employees emp left outer join departments dept on emp.department_id=dept.department_id;
select distinct j.*, l.* from employees emp, jobs j, departments dept, locations l where emp.job_id = j.job_id and emp.department_id = dept.department_id and dept.location_id = l.location_id and dept.department_id=30;
select emp.first_name||' '||emp.last_name "NAME", j.*, dept.department_id, dept.department_name from employees emp, jobs j, departments dept, locations l where emp.job_id = j.job_id and emp.department_id=dept.department_id and dept.location_id=l.location_id and l.city='Toronto';
select worker.last_name, worker.employee_id, manager.last_name, manager.employee_id from employees worker join employees manager on worker.manager_id=manager.employee_id;