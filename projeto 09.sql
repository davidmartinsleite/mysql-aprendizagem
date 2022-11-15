-- cardinalidade representa o tipo de relação que as tabelas possuem 
-- um-para-um
-- um-para-muitos
-- muitos-para-muitos

-- adicionando uma chave estrangeira (um-para-muitos)
use cadastro;
describe gafanhotos;

-- criamos uma nova coluna na tabela gafanhotos 
-- vamos criar uma relação de o curso preferido de um aluno(ele só pode ter um curso preferido)
alter table gafanhotos add cursopreferido int;

-- agora vamos relacionar a nova coluna com a chave estrangeira 
alter table gafanhotos
add foreign key (cursopreferido) -- aqui nos adicionamos a chave
references cursos(idcurso); -- esse elemento esta ligado com a coluna idcurso da tabela cursos
-- na tabela logo após o uso desse comando vai aparecer na coluna o termo "MUL" representando a chave estrangeira 

select * from gafanhotos;
select * from cursos;

-- aqui vamos adicionar esse novo elemento a a coluna na tabela gafanhotos
-- vamos adicionar ao id 1
update gafanhotos set cursopreferido = '6' where id = '1';

-- NOTA: você só consegue deletar um elemento caso ele n esteja relacionado 
delete from cursos
where idcurso = '28';

-- junções
-- caso tentamos agora ver os cursos favoritos oque é retornado é apenas o idcurso e não o nome do curso
select nome, cursopreferido from gafanhotos;

-- oque gostaria de ser feita era juntar esse primeira lista com essa apresenta logo abaixo
select nome, ano from cursos;

-- agora vamos tentar juntar as duas tabelas 
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos;
-- usando o "join" podemos juntas os elementos das tabelas, note que temos agora que colocar
-- de onde vem cada coluna como "tebela01.coluna", "tabela02.outra_coluna"

-- NOTA: aqui ele junto tudo com tudo 


-- vamos terminar para evitar a repetição usando o comando "on"
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; -- tem que usar o "on" para dar sentido 
-- CHAVE PRIMARIA        CHAVE ESTRANGEIRA
-- NOTA: aqui vai mostrar apenas os elementos que possuem ligação 


-- mostra todos os elementos do lado ESQUERDO 
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos left outer join cursos 
on cursos.idcurso = gafanhotos.cursopreferido;


-- mostra todos os elementos do lado DIREITO 
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos right outer join cursos 
on cursos.idcurso = gafanhotos.cursopreferido;



-- criar um relacionamento muitos-para-muitos
-- vamos criar uma relação de cursos que o aluno assite (ele pode ver varios ao mesmo tempo)
-- para isso vamos criar uma nova tabela!

create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id), -- esse ID é o dele mesmo ali de cima
-- aqui dentro vamos colocar agora as DUAS CHAVES ESTRANGEIRAS
foreign key (idgafanhoto) references gafanhotos(id), -- mesma coisa do "um-para-muitos" 
foreign key (idcurso) references cursos(idcurso)-- referencia a coluna "idcurso" da tabela "cursos"
) default charset = utf8;
-- NOTA: perceba que "idcurso" e exatamente igual ao da tabela "cursos", 
-- não tem problema usar o mesmo nome para essa nova tabela

-- vamos adicionar alguns usuario na relação
insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');

-- quando tentamos ver os elementos da lista só da pra ver os numeros
select * from gafanhoto_assiste_curso;
-- o restante dos cadastros foi feito pelo proprio workbench(ficou mais fácil...)

-- agora vamos fazer as junções
select * from gafanhotos g -- esse "g" é um apelido para "gafanhotos", fica menos texto para montar
join gafanhoto_assiste_curso a -- tambem criei um apelido, e fiz o join
on g.id = a.idgafanhoto;

-- aqui você pode observer que os IDs são iguais nessa tabela
select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos g 
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto;

-- aqui nós podemos ver que o id do nome veio
select g.nome, idcurso from gafanhotos g 
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
order by g.nome;

-- agora vamos montar o join para o curso
select g.nome, c.nome from gafanhotos g 
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.idcurso
order by g.nome;








