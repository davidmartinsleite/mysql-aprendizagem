		-- AULA DE SELECT

select * from cursos -- ele vai mostrar tudo em ordem pela chave primaria (PK)
order by nome; -- caso coloque "order by" ele vai ordenar pela coluna selecionada

select * from cursos -- DESC = DESCENDENT
order by nome desc; -- caso coloque o termo "desc" ele vai ordenar de baixo para cima

desc cursos; -- esse "des" é para dar a descrição DESC = DESCRIBE NÃO CONFUDA!!!

-- vamos filtrar as colunas...
select nome, carga, ano from cursos -- envez do asterisco colocamos o nome das colunas desejadas
order by nome;

select ano, nome, carga from cursos -- a sequencia que vc monta tambem é a mostrada
order by ano, nome; -- isso cria uma ordem de uma ordem, 

select * from cursos
where ano = '2016' -- essa função vai retornar só os elementos que tenham ano = 2016
order by nome;

select nome, carga from cursos -- só o nome e a carga
where ano = '2015' -- note que ele n mostrar a coluna ano pelo select
order by nome;

select nome, descricao from cursos 
where ano <= '2015' -- aqui a condição é outra, você pode criar varios operadores relacionais
order by nome;		-- >, >=, <, <=, =, !=, <> mesma coisa que !=

select nome, ano from cursos
where ano between 2014 and 2016 -- "between" entre um valor e outro 
order by ano desc, nome; -- posso colocar o desc mesmo em varias colunas relacionando-as de forma independente

select idcurso, nome, ano from cursos
where ano in ('2014', '2016', '2018') -- "in" valores que sejão exatamente iguais aos da coluna
order by nome;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30; -- aqui construimos mais de uma caracteristica de amostragem 
									-- podemos usar o "or" tambem 

select * from cursos
where nome like 'P%'; -- "like" = parecido % subistitui nem um ou varios caracteres,
					  -- isso significa que P+QUALQUER COISA 
select * from cursos
where nome like '%a'; -- QUALQUER COISA + a 
select * from cursos
where nome like '%a%'; -- QUALQUER COISA + a + QUALQUER COISA, basta ter um a na coluna nome
-- NOTA: nem todo SQL suporta isso 
select * from cursos
where nome not like '%a%'; -- mostral algo que NÃO tenha a letra "A"

select * from cursos
where nome like 'php_'; -- o "_" serve para que tenha algo ainda a frente seja oque for
						-- o "PHP" ele não aparece pq ele n n tem mais a frente

-- usando o distinct
select nacionalidade from gafanhotos; -- aqui ele vai mostrar todas as nacionalidade, más repetidas
select distinct nacionalidade from gafanhotos; -- nesse caso ele mosta sem se repetir

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos; -- mostrando mais um exemplo do distinct 

-- usando agragação
select count(*) from cursos; -- aqui ele vai somar todas as listas contidas em curso 

select count(*) from cursos
where carga > 40; -- aqui ele vai contar apenas os cursos que tenham mais que 40 horas 

select max(carga) from cursos; -- localiza o valor máximo de uma coluna 

select max(totaulas) from cursos
where ano = '2016'; -- selecione no ano de 2016, qual foi o maximo de totalulas dele

select min(totaulas) from cursos; -- mostra o valor minimo de uma coluna

select sum(totaulas) from cursos; -- mostra a soma dos elementos de uma coluna

select avg(totaulas) from cursos; -- vai somar todos os elementos da coluna e fazer a média
								  -- pode retornar um valor flutuante (float)
                                  
-- NOTA: as funções de agregamento só retornam um valor simples










































































