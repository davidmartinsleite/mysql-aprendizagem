drop database cadastro; -- deleta um banco de dados especifico ex: cadastro
drop table pessoas; -- deleta uma tabela EX: pessoas
use cadastro;

-- os parametros em sql são chamados de constraints, nesse banco vamos usar 2 delas
create database cadastro
default character set utf8 -- isso criação a codificação para os caracteres brasileiros
default collate utf8_general_ci; -- aqui um collation padrão 
-- essa configuração de banco de dados permite usar nossos nossos caracteres como ç ou ~

create database test; -- essa banco foi contruido apenas para exemplificar a diferença 

-- vamos melhorar a tabela da aula anterior 
create table pessoas ( -- DDL (deta definittion language)
id int not null auto_increment, -- "auto_increment" ele monta incrementos automaticamente, 
								-- EX: 1° pessoa ID:01, 2° pessoa ID:02
nome varchar (30) not null, -- "not null" obriga o preenchimento desde dado
nascimento date,
sexo enum('M', 'F'), -- aqui ele só vai aceitar os characteres M ou F, 
					 -- isso permite definir a estrutura de uma forma mais rigida
peso decimal (5, 2), -- o primeiro numero representa o total de casas, 
					 -- o segundo numero representa as casas após a virgula EX: "102,05"
altura decimal (3,2), --  EX: 1,78
nacionalidade varchar(20) default 'brasil', -- si ninguem digitar nada o padrão é "brasil"
primary key (id) -- define o ID como a CHAVE PRIMARIA 
)default charset = utf8; -- ajustar a criação de caractes padrão para a criaçã oda tabela

