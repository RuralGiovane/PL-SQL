/*
Aprendendo a usar Condicionais if, elif e else

SINTAXE:

*/ 


--Exercicio com o professor

DECLARE 
    GENERO VARCHAR2(1) := '&VALOR';
BEGIN
    IF UPPER(GENERO) = 'M' THEN
        DBMS_OUTPUT.PUT_LINE('O Gênero informado é Masculino');
    ELSIF UPPER(GENERO) = 'F' THEN
        DBMS_OUTPUT.PUT_LINE('O Gênero informado é Feminino');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Outros');
    END IF;
END;