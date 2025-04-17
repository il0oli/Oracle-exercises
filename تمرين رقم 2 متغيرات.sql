set serveroutput on;
declare
v_salary employees.salary%TYPE;
v_id employees.employee_id%TYPE;
begin
v_id :=&n;
SELECT salary into v_salary FROM employees where employee_id =v_id;
dbms_output.put_line(v_salary);
end;
