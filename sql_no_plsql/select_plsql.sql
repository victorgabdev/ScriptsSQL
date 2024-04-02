-- Bloco PL/SQl é diferente de Transação do banco de dados

-- select into from
-- O comando select no PL/SQl deve retornar somente 1 linha
-- EXCEPTIONS
-- TOO_MANY_ROWS: Se o select retornar mais de uma linha
-- NO_DATA_FOUND: Se o select não retornar nenhuma linha

SET SERVEROUTPUT ON
DECLARE
    vFirst_name    employees.first_name%type;
    vLast_name     employees.last_name%type;
    vSalary        employees.salary%type;     
    vEmployee_id   employees.employee_id%type := 121;
BEGIN
    SELECT e.first_name, e.last_name, e.salary
    INTO vFirst_name, vLast_name, vSalary 
    FROM employees e
    WHERE e.employee_id = vEmployee_id;
    
    DBMS_OUTPUT.PUT_LINE('Id do funcionário: ' || vEmployee_id);
    DBMS_OUTPUT.PUT_LINE('Nome: ' || vFirst_name);
    DBMS_OUTPUT.PUT_LINE('Sobrenome: ' || vLast_name);
    DBMS_OUTPUT.PUT_LINE('Salário: ' || vSalary);
END;

-----------------------------------------
SET SERVEROUTPUT ON
DECLARE
    vJob_id      employees.job_id%type := 'IT_PROG';
    vAvg_salary  employees.salary%type;
    vSum_salary  employees.salary%type;
BEGIN
    SELECT ROUND(AVG(e.salary), 2), ROUND(SUM(e.salary), 2)
    INTO vAvg_salary, vSum_salary
    FROM employees e
    WHERE e.job_id = vJob_id;
    
    DBMS_OUTPUT.PUT_LINE('Cargos: ' || vJob_id);
    DBMS_OUTPUT.PUT_LINE('Media salarial: ' || vAvg_salary);
    DBMS_OUTPUT.PUT_LINE('Somatório de salários: ' || vSum_salary);
END;