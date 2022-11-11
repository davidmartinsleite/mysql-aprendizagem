desc pessoas; -- descreve do mesmo jeito que o "describe" 

alter table pessoas -- para habilitar auteração da tabela, no caso pessoas
add column profissao varchar(10); -- adiciona a coluna "profissao" a tabela pessoas

select * from pessoas; -- para verificar os registros da tabela

alter table pessoas
drop column profissao; -- deleta a coluna profissao 