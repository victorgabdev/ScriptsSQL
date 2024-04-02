SET SERVEROUTPUT ON
DECLARE
    vEmployee_id   employees.employee_id%type := 208;
    vPercentual    NUMBER(3) := 10;
BEGIN 
   UPDATE  employees e
   SET     e.salary = e.salary * (1 + vPercentual / 100)
   WHERE   e.employee_id = vEmployee_id;
   COMMIT;
END;