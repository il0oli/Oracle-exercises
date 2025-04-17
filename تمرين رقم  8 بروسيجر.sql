set serveroutput on;

create or REPLACE PROCEDURE format1(tel in out VARCHAR2) 
is
BEGIN

tel := substr(tel,1,3) || '-' || substr(tel,4,3) || '-' ||  substr(tel,7);

end;

declare v_phone VARCHAR2(20) :='777112116';
BEGIN
format1(v_phone);
dbms_output.put_line(v_phone);
end;
