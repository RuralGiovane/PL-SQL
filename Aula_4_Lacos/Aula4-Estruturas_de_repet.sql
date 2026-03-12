--ESTRUTURA DE REPETIÇÃO: loop
DECLARE 
    v_contador  NUMBER(2):=1;
BEGIN
LOOP
    DBMS_OUTPUT.put_line(v_contador);
    v_contador := v_contador + 1;
    EXIT WHEN v_contador > 20;
    END LOOP;
END;

-- Mesma estrutura usando o WHILE

DECLARE
    v_contador  NUMBER(2):=1;
BEGIN 
WHILE v_contador <= 20 LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
    v_contador := v_contador + 1;
END LOOP;
END;

-- Mesma estrutura usando o FOR
DECLARE 
    v_contador NUMBER(2) := 1;
BEGIN
FOR v_contador in 1..20 LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
END LOOP;
END;

--EXECICIOS

/*
EXERCICIO 1 
Montar um bloco de programação que realize o processamento de uma tabuada qualquer, por exemplo a tabuada do número 150
*/

DECLARE
    v_multiplicado  NUMBER(2) := 1;
    v_multiplicador NUMBER(2) := v_multiplicador;
BEGIN
FOR v_multiplicador in 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_multiplicado);
END LOOP;
END;


-- Resolução do professor
BEGIN
    FOR x in 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(x || 'x' || 10 || ' é = ' || x*10);
END LOOP;
END;


-- Escreva um bloco anonimo para imprimir números de 1 até 10 e mostre qual é impar ou par

--Resolução pessoal
--Não deu tempo


--Resolução do professor

BEGIN 
    FOR x in 1..20 LOOP
        IF MOD(x, 2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE('O número ' || x || ' é par');
        ELSE
            DBMS_OUTPUT.PUT_LINE('O número ' || x || ' é impar');
        END IF;
        END LOOP;
END;