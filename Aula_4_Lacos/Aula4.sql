SET SERVEROUTPUT ON;

DECLARE
    nomecliente VARCHAR2(30);
    codcliente  NUMBER;
BEGIN
    SELECT
        nomecliente,  
        codcliente 
        INTO 
            nomecliente, 
            codcliente
        FROM
            cliente, codcliente
        WHERE
            codcliente = 100;

    DBMS_OUTPUT.PUT_LINE('O nome do cliente é: ' || nomecliente || ' e código ' || codcliente);

END;


-------------------------------------------

CREATE TABLE aluno (
    ra              VARCHAR2(10) PRIMARY KEY,
    nome            VARCHAR(30),
    data_cadastro   DATE
)

---------------------------------------------
--Inserindo dado na tabela (INSERT)
DECLARE
    v_ra    VARCHAR(30) := '&ra';
    v_nome  VARCHAR2(40) := '&nome';
    v_data  DATE := sysdate;
BEGIN
    INSERT INTO aluno VALUES (  v_ra, 
                                v_nome,
                                v_data);
    COMMIT;

END;

SELECT * FROM aluno;

---------------------------------------------
-- Alterando tabela (ALTER TABLE)
ALTER TABLE aluno ADD nota NUMBER;

DECLARE 
    v_ra    VARCHAR2(10) := '&ra';
    v_nota  NUMBER := '&nota';
BEGIN
    UPDATE aluno
    SET
        nota = v_nota
    WHERE
        ra = v_ra;
    COMMIT;
END;

------------------------------------------------
-- Deletando Registro (DELETE)

DECLARE 
    v_ra VARCHAR2(10) := '&ra';
BEGIN
    DELETE FROM aluno
    WHERE
        ra = v_ra;

    COMMIT;
END;