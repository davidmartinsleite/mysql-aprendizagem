use cadastro;
-- agrupamento
select distinct totaulas from cursos -- aqui vamos ver os tipos de resultados da coluna
order by totaulas;

select totaulas from cursos
group by totaulas  -- com essa função vamos AGRUPAR pelos valores
order by totaulas; -- isso não cria uma distinção e sim uma agrupação dos valores 

-- vamos obervar a real diferença entrar essas duas funções, usaremos "count(*)" para isso

select totaulas, count(*) from cursos
group by totaulas -- neste count ele está agrupando e contando quantas aulas tem com 8 ou 20 ou 25 horas...
order by totaulas;-- você consegue ter um panorama geral de uma coluna 

select carga, count(*) from cursos -- aqui ele agrupo os cursos que tenham 30 a
where totaulas = 30				   -- ele divide em 2 grupos pois tem auals com 40 e 60 horas 
group by carga;					   -- assim ele cria 2 agrupamentos 

select ano, count(*) from cursos
group by ano
having count(ano) >= 5 -- ele serve como o "where" 
order by count(*);
-- NOTA: o "having" só pode mostrar algo q tenha ido para o "group by" caso contrario retorna erro

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos); -- esse comando cria uma media dinamica do filtro 










