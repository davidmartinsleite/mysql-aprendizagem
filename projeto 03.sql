-- nesse projeto vamos adicionar pessoas a tabela 
use cadastro;
insert into pessoas -- vai inserir esse cadastro na tabela pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
-- NOTA: oque está entra aspas simples é dados o resto e constrenge
values
('maria', '1999-12-30', 'F', '55.2', '1.65', 'portugal');
-- NOTA: o ID não aparece porque ele usa auto increment para preencher os valores

-- tabem podemos usar a informal "DEFAULT" para preencher os dados sem ficar faltando nada...
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

-- se os campos forem construidos na mesma ordem q forá criado o DDL, 
-- ele não precisa do preenchimento dos campos
insert into pessoas values
(DEFAULT, 'David', '1989-06-23', 'M', '65.2', '1.78', DEFAULT);

-- tambem pode ser cadastradas varias pessoas simutaneamente
insert into pessoas values
(DEFAULT, 'Suelma', '1987-06-23', 'F', '55.1', '1.70', DEFAULT), -- colocado uma "," 
(DEFAULT, 'Ben', '2019-03-26', 'M', '30', '0.80', DEFAULT); -- ao final do cadastro ";"

select * from pessoas; -- mostra tudo em pessoas, no caso os cadastros



