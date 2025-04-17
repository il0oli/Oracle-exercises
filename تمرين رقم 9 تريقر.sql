create or REPLACE trigger times_work
before
insert or delete or update 
on employees
begin
if (to_char(sysdate,'day') in ('sunday','friday') or
to_number(to_char(sysdate,'hh24')) not between 8 AND 15) then 
RAISE_application_error(-20090,'DML not allowed in thursday and friday ,and not between 8 to 15 '); --20000 20999

end if;
end;

SELECT * from employees  WHERE employee_id=107;
UPDATE employees set first_name = 'Zack' WHERE employee_id=107;
select to_char(sysdate,'day') from dual;