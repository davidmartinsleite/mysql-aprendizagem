select * from gafanhotos;
-- NOTA: tudo que está em linhas são os registros(tuplas), 
-- e tudo q estiver em coluna é campo(atributos)


insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');
-- NOTA: aqui existem alguns erros que serão corrigidos ao decorrer deste programa

select * from cursos;

update cursos -- vai criar uma atualização dentro da tabela cursos
set nome = 'HTML5' -- vai modificar o atributo nome 
where idcurso = '1'; -- vai localizar esse atributo pelo idcursos

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';


update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1; -- esse comando limita quantas linhas vão poder ser afetadas 

delete from cursos -- deleta linhas dentro da tabela cursos
where idcurso = '8'; -- seleciona a linha deletada pela tabela de idcurso

delete from cursos
where ano = '2018'
limit 3;

truncate cursos; -- deletas TODAS as linhas da tabela
