-- nessa atividade consiste em fazer um backup do banco (DUMP) de dados 
-- vamos começar verificando tudo
use cadastro;

select * from cursos;
describe cursos;
select * from gafanhotos;
describe gafanhotos;

-- depois vamos na aba: server > data export
-- selecione os bancos que vai salvar, no caso cadastro
-- nesse caso usar a opção "self-contained file"
-- marcar a opção "include create schema", serve para já criar os comandos necessarios para gerar o sistema
-- clicar em start

-- depois vamos por a prova destruindo todo o banco de dados
drop database cadastro;

-- agora vamos recuperar os dados usando o backup, nesse caso em especifico foi colocado no git

-- agora vá em: server > Data Import
-- selecione "import from self-contained file" clique em (...), selecione o arquivo
-- clique em start export

