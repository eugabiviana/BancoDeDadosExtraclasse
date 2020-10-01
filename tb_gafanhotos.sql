#alterando a tabela tb_pessoas:

#vendo a estrutura da tabela:
describe tb_pessoas;

#renomeando a tabela:
alter table tb_pessoas
rename to tb_gafanhotos;

#adicionando uma coluna (nesse caso, ela vai para a última posição):
alter table tb_pessoas
add column profissao varchar(10);

#deletando uma coluna:
alter table tb_pessoas
drop column profissao;

#adicionando uma coluna após outra específica:
alter table tb_pessoas
add column profissao varchar(10) after nome;

#adicionando uma coluna na primeira posição da tabela:
alter table tb_pessoas
add column codigo int first;

#modificando a estrutura da tabela:
alter table tb_pessoas
modify column profissao varchar(30) not null default ''; #esse comando com aspas, permite que crie a coluna vazia, apesar da constraint not null.

#mudando nome da tabela:
alter table tb_pessoas
change profissao prof varchar(20);

select * from tb_pessoas;



