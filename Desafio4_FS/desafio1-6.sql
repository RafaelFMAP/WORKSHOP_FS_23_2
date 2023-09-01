-- Active: 1693509447257@@127.0.0.1@3306
CREATE DATABASE desafio4;
USE desafio4;

CREATE TABLE aluno (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    nota FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE funcionario (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    salario FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE visitante (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sexo CHAR NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE aluno 
ADD COLUMN 
sexo CHAR NOT NULL;

ALTER TABLE funcionario
ADD COLUMN 
sexo CHAR NOT NULL;

ALTER TABLE visitante
ADD COLUMN 
data_visita DATE NOT NULL;

INSERT INTO aluno (nome, email, nota, sexo) 
VALUES ('João', "joao@teste.com", 8.5, 'M');

INSERT INTO aluno (nome, email, nota, sexo)
VALUES ('Maria', "maria@teste.com", 9.5, 'F');

INSERT INTO aluno (nome, email, nota, sexo)
VALUES ('Pedro', "pedro@teste.com", 7.5, 'M');

INSERT INTO funcionario (nome, email, salario, sexo)
VALUES ('José', "jose@teste.com", 1500.00, 'M');

INSERT INTO funcionario (nome, email, salario, sexo)
VALUES ('Ana', "ana@teste.com", 2500.00, 'F');

INSERT INTO funcionario (nome, email, salario, sexo)
VALUES ('Carlos', "carlos@teste.com", 3500.00, 'M');

INSERT INTO visitante (nome, sexo, data_visita)
VALUES ('João', 'M', '2021-06-01');

INSERT INTO visitante (nome, sexo, data_visita)
VALUES ('Maria', 'F', '2021-06-02');

INSERT INTO visitante (nome, sexo, data_visita)
VALUES ('Pedro', 'M', '2021-06-03');

ALTER TABLE aluno
DROP COLUMN sexo;

ALTER TABLE funcionario
DROP COLUMN sexo;

ALTER TABLE visitante
DROP COLUMN sexo;

SELECT * FROM aluno;
SELECT * FROM funcionario;
SELECT * FROM visitante;

SELECT nome FROM aluno WHERE nota > 8.0;
SELECT nome FROM funcionario WHERE salario > 2000.0;
SELECT nome FROM visitante WHERE data_visita = '2021-06-02';