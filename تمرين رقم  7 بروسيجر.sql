set serveroutput on;
create or REPLACE PROCEDURE pro1 (id_emp employees.employee_id%TYPE, up1 employees.salary%TYPE)
is
ex EXCEPTION;
BEGIN

UPDATE employees set salary = up1 where employee_id = id_emp; 
if(sql%notfound) THEN
RAISE ex;
END IF;
exception
WHEN ex
THEN
dbms_output.put_line('no employee found!!');
end;

execute pro1(13,10000);
select salary FROM employees WHERE employee_id =107;


