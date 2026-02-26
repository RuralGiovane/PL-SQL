-- Aprendendo a usar o Declare, Begin e End.
SET SERVEROUTPUT ON; --INFOMRAR PARA IDE QUE ESTOU TRABALHANDO, QUE QUERO QUE MOSTRE TODOS OS VALORES
DECLARE
    -- v_nome  VARCHAR2(30);
    -- idade   NUMBER := 40;
    produto         VARCHAR2(30)    := 'Televisão';
    qtd_produtos    NUMBER      := 2;
    valor           NUMBER      := 1200;
    parcelas        NUMBER      := 10;
BEGIN 
    --v_nome := 'Giovane';
    valor := valor * qtd_produtos;
    parcelas := valor / parcelas;
    dbms_output.put_line('Qual o produto comprado: ' || produto);
    dbms_output.put_line('Quantas unidades comprei: ' || qtd_produtos);
    dbms_output.put_line('Qual o valor unitário: R$' || valor);
    dbms_output.put_line('Valor de cada parcela: R$' || parcelas);

END;

--------------------------------------------------------------//--------------------------------------------------------------
/*
Exercicio 1

Criei um bloco anônimo que faça a conversão de reais para dólares

O seu código deverá receber um determinado valor em dólares e imprimir quantos reais esse mesmo valor representa.

Cotação
reais = 1
dólares = 5.13

200 reais, quantos seria esse valor em dólares?
*/

-- RESPOSTA PESSOAL
SET SERVEROUTPUT ON;
DECLARE
    real    NUMBER := 200;
    dolar   NUMBER := 5.13;
    conversao NUMBER := 200;

BEGIN
    conversao := real/dolar;
    dbms_output.put_line('Valor em real: ' || real);
    dbms_output.put_line('Cotação do dólar: ' || dolar);
    dbms_output.put_line('Valor em : ' || conversao);

END;


--Correção do professor
SET SERVEROUTPUT ON;
DECLARE
    reais NUMBER := 200;
BEGIN
    DBMS_OUTPUT.PUT_LINE(reais || ' reais em dólares, fica o seguinte valor: ' ||round((reais / 5.13),2));
END;

--------------------------------------------------------------//--------------------------------------------------------------

--Aprendendo a utilizar o INPUT do Usuário
SET SERVEROUTPUT ON;
DECLARE
    reais NUMBER := &valor;
BEGIN
    DBMS_OUTPUT.PUT_LINE(reais || ' reais em dólares, fica o seguinte valor: ' ||round((reais / 5.13),2));
END;

--------------------------------------------------------------//--------------------------------------------------------------
/*
Exercicio 2 

Em tempo de execução simule a compra de um carro em que o usuário irá dar 20% de entrada do valor e parcelar em 10x o restante do valor

Seu código deverá:

- Imprimir o valor do carro
- O valor da entrada
- o valor de cada parcela acrescentado 10% de juros.
- E o valor total do veículo financiado
*/


--Resposta Pessoal
SET SERVEROUTPUT ON;
DECLARE
    valor_carro     NUMBER := &valor;
    qtd_parcelas    NUMBER := 10;
    valor_entrada   NUMBER;
    valor_total     NUMBER;
    valor_parcela NUMBER;
BEGIN
    valor_entrada := valor_carro * 0.2;
    valor_parcela  := (valor_carro - valor_entrada) * 0.1;
    valor_total     := valor_entrada + valor_parcela * 10; 
    dbms_output.put_line('Valor do carro: ' ||  valor_carro);
    dbms_output.put_line('Valor da entrada: ' || valor_entrada);
    dbms_output.put_line('Valor da parcela : ' || valor_parcela);
    dbms_output.put_line('Valor total : ' || valor_total);
END;
-- Foi o que deu pra fazer antes da correção, então está incompleto


--Correção professor
SET SERVEROUTPUT ON;
DECLARE
    valorcarro      NUMBER := &valor;
    entrada         NUMBER;
    parcelas        NUMBER := 10;
    qtdparcelas     NUMBER := 10;
    valorfinanciado NUMBER;
BEGIN
    dbms_output.put_line('O valor carro a vista : R$' || valorcarro);
    entrada := valorcarro * 0.20;
    dbms_output.put_line('O valor valor da entrada  R$: ' || entrada);
    parcelas := ( ( valorcarro * 1.20 ) / parcelas ) * 1.01;

    dbms_output.put_line('Valor de Cada parcela R$  : ' || parcelas);
    valorfinanciado := ( parcelas * qtdparcelas ) + entrada;
    dbms_output.put_line('Valor total do Carro Financiado  R$  : ' || valorfinanciado);
END;