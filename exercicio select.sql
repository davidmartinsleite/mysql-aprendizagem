-- EXERCICIO!

-- 01 uma lista com o nome de todas as gafanhotas mulheres
-- 02 uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
-- 03 uma lista com o nome de todos os homens que trabalham como programadores
-- 04 uma lista com os dados de todas as mulheres que nasceram no brasil e que têm seu nome iniciando com a letra J
-- 05 uma lista com o nome e nacionalidade de todas os homens que têm silva no nome, não nasceram no brasil e pesam menos de 100kg
-- 06 qual é a maior altura entre gafanhos homens que moram no brasil
-- 07 qual é a média de peso dos gaganhotos cadastrados
-- 08 Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
-- 09 quantas gafanhotras mulheres têm mais de 1.90m de altura ?

-- RESPOSTAS
select * from gafanhotos;
-- 01 uma lista com o nome de todas as gafanhotas mulheres
select * from gafanhotos
where sexo = 'F';

-- 02 uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
select * from gafanhotos
where nascimento between '2000-01-1' and '2015-12-31'
order by nascimento;

-- 03 uma lista com o nome de todos os homens que trabalham como programadores
select * from gafanhotos
where profissao = 'Programador' and sexo = 'M';

-- 04 uma lista com os dados de todas as mulheres que nasceram no brasil e que têm seu nome iniciando com a letra J
select * from gafanhotos
where nacionalidade = 'Brasil' and nome like 'J%';

-- 05 uma lista com o nome e nacionalidade de todas os homens que têm silva no nome, não nasceram no brasil e pesam menos de 100kg
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100;

-- 06 qual é a maior altura entre gafanhos homens que moram no brasil
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

-- 07 qual é a média de peso dos gaganhotos cadastrados
select avg(peso) from gafanhotos;

-- 08 Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 09 quantas gafanhotras mulheres têm mais de 1.90m de altura ?
select * from gafanhotos
where sexo = 'F' and altura > '1.90';

