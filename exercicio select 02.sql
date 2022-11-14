-- exercicio

-- 01 uma lista com as profisso dos gafanhotose seus repectivos quantitativos
-- 02 quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005 ? (separando pelos sexo)
-- 03 uma lista com os gafanhotos que nasceram fora do brasil, mostrando o país de origem e o total de pessoas nascidas lá.
--    só nos interessam os países que tiverem mais de 3 ganfanhos com nacionalidade
-- 04 uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessooas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados

select * from gafanhotos;
-- 01 uma lista com as profisso dos gafanhotose seus repectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao;

-- 02 quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005 ? (separando pelos sexo)
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

-- 03 uma lista com os gafanhotos que nasceram fora do brasil, mostrando o país de origem e o total de pessoas nascidas lá.
--    só nos interessam os países que tiverem mais de 3 ganfanhos com nacionalidade
select nacionalidade, count(*) from gafanhotos
group by nacionalidade
having count(nacionalidade) > 3;

-- 04 uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessooas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados
select altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);


