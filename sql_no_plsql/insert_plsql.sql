SET SERVEROUTPUT ON
BEGIN 
    INSERT INTO employees e -- tabela
    (e.employee_id, e.first_name, e.last_name, e.email, e.phone_number,
    e.hire_date, e.job_id, e.salary, e.commission_pct, e.manager_id,
    e.department_id)  -- campos da tabela 
    VALUES
    (employees_seq.nextval, 'Victor', 'Costa', 'victorcosta@gmail.com',
    '98181-5720', SYSDATE,  'IT_PROG', 5248, 0.4, 103, 60);
    COMMIT;
END;


SELECT * FROM employees e WHERE e.email = 'KBRYANT@gmail.com';
SELECT * FROM employees e WHERE e.email = 'victorcosta@gmail.com';
