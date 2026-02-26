CREATE TABLE cadastro_cliente(
    id_cliente      INTENGER        NOT NULL    PRIMARY KEY ,
    nome_cliente    VARCHAR(30)     NOT NULL,
    cpf             VARCHAR(12)     NOT NULL,
    telefone        NUMBER(11),
    email           VARCHAR(50),
    data_nascimento DATE
)


CREATE TABLE genero_cliente (
    id_genero   INTEGER         NOT NULL,           
    descricao   VARCHAR(30)     NOT NULL
)


CREATE TABLE pais(
    id_pais         INTEGER        NOT NULL     PRIMARY KEY,    
    nome_pais       VARCHAR(50)
    
)

CREATE TABLE bairro (
    id_bairro   NUMBER(10)    NOT NULL    PRIMARY KEY,
    nome_bairro VARCHAR(30)   NOT NULL 

)


CREATE TABLE estado(
    id_estado       INTEGER         NOT NULL    PRIMARY KEY,
    nome_estado     VARCHAR(30)     NOT NULL
    
    CONSTRAINT id_estado_pk PRIMARY KEY (id_estado)
)


CREATE TABLE cidade(
    id_cidade       INTEGER         NOT NULL    PRIMARY KEY,
    nome_cidade     VARCHAR(30)    NOT NULL
        
)


CREATE TABLE endereco_cliente (
    id_endereco     INTEGER         NOT NULL,
    logradouro      VARCHAR(30)     NOT NULL,
    complemento     VARCHAR(30)     NOT NULL,
    cep             NUMBER(30),  
    numero          NUMBER(30)


    CONSTRAINT id_endereco_pk PRIMARY KEY (id_endereco)
)

CREATE TABLE tipo_logradouro (
    id_logradouro   INTEGER     NOT NULL,
    nome            VARCHAR(30) NOT NULL
)