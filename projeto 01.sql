-- primerio projeto 
create database cadastro; -- cria o banco de dados

use cadastro; -- acessa o banco de dados cadastro

create table pessoas ( -- com o bando de dados selecionado sera criado uma tabela com alguns caracteres
nome varchar(30), -- cria uma variavel que usa characteres ara adiconar ao sistema, ela e variavel 
idade tinyint, -- cria um int reduzido capaz de usar apenas 3 bits
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);
show databases; -- mostra os banco de dados disoniveis
show tables; -- mostra as tabelas disoniveis naquele banco de dados
status; -- esse comando so funciona no terminal do mysql, da os status de qual banco de dados 
		-- esta sendo usado no momento entre outras coisas 
describe pessoas; -- descreve uma lista dos dados dentro de uma tabela, de forma detalhada

