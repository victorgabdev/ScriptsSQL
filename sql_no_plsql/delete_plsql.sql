SET SERVEROUTPUT ON
DECLARE
    vEmployee_id   employees.employee_id%type := 207;
BEGIN 
   DELETE FROM employees e
   WHERE e.employee_id = vEmployee_id;
   COMMIT;  -- REALIZAR A TRANSACAO
END;