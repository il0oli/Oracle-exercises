set serveroutput on;

BEGIN
for i in REVERSE 1..10 loop

if(i=5) then 
continue;
end if;
dbms_output.put_line(i);
end loop;
end;