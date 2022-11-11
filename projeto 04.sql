desc pessoas; -- descreve do mesmo jeito que o "describe" 

alter table pessoas -- para habilitar auteração da tabela, no caso pessoas
add column profissao varchar(10); -- adiciona a coluna "profissao" a tabela pessoas
-- NOTA: aqui a coluna profissao tinha sido adicionado no final da tabela

select * from pessoas; -- para verificar os registros da tabela

alter table pessoas
drop column profissao; -- deleta a coluna profissao 

alter table pessoas
add column profissao varchar(10) after nome; -- aqui nós adicionamos logo após a coluna nome 

alter table pessoas
add column codigo int first; -- aqui ele adiciona a PRIMEIRA coluna da tabela

alter table pessoas 
modify column profissao varchar(20)  default '';
-- essa função vai MODIFICAR uma coluna no caso a profissao
-- ela vai receber aqui um varchar de 20 agora, e o "not null" que retornaria um erro
-- isso porque ela foi adicionada posteriormente ao sistema, 
-- vc pode usar um "default" para preencher o novo dado de forma automática
-- NOTA: o uso do "not null" n pode ser usado na versão atual do programa pq n 
-- pode modificar arquivos já feitos 

alter table pessoas 
change column profissao prof varchar(20); -- modifica o nome da coluna "(original atual)"
-- NOTA: caso queira mudar a coluna ele perde os argumentos como "not null" ou "default"
-- caso queira ainda usar tem q ser colocado novamente 

alter table pessoas 
rename to gafanhotos; -- renomeia a tabela 

-- nova tabela
create table if not exists cursos ( -- "if not exists" você só vai cirar uma tabela 
									-- SE ela não existir (condição)
nome varchar(30) not null unique, -- ele não vai deixar ter 2 nomes iguais 
descricao text,
carga int unsigned, -- "unsigned" ele vai eliminar o sinal, 
					-- isso vai economizar 1 byte pra cada registro
totaulas int,
ano year default '2016'
) default charset = utf8;

select * from cursos;
desc cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso); -- adiciona o PK (primary key) para a coluna "idcurso"

-- 	VAMOS CRIAR E DELETAR UMA TABELA INTEIRA
create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'maria', '12'),
('3', 'Marcos', '50');

select * from teste;

drop table if exists alunos; -- alunos não existe logo ele n execulta esse comando
drop table if exists teste; -- vai apagar a tabela inteira caso você queira 



