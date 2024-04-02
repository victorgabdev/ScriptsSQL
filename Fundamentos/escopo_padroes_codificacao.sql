-- ESTUDANDO ESCOPO
SET SERVEROUTPUT ON
<<BLOCO1>>
DECLARE
    vbloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Reerenciando variável do Bloco 1: ' || vbloco1);
    
    <<BLOCO2>>
    DECLARE
        vbloco2 VARCHAR2(20) := 'Bloco 2';
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Reerenciando variável do Bloco 1: ' || vbloco1);
        DBMS_OUTPUT.PUT_LINE('Reerenciando variável do Bloco 1: ' || vbloco2);
    END;
END;

-- Convencoes de Codificacao
-- comandos sql - MAIUSCULAS (SELECT, INSERT, UPDATE ...)
-- Palavras chaves - MAIUSCULAS (DECLARE, BEGIN, END ...)
-- Tipos de dados - MAIUSCULAS (VARCHAR, NUMBER, DATE ...)
-- Nomes de identificadores e parametros - minusculas
-- Nomes de tabelas  colunas - minusculas

SELECT * FROM employees;
