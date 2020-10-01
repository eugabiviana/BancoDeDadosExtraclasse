#criando nova tabela:
create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
ano year default '2020'
)default charset = utf8;

#adicionando nova coluna no início:
alter table tb_cursos
add column id_cursos int first;

#corrigindo erro de digitacao apos criaçao da coluna:
alter table tb_cursos
change column id_cursos id_curso int first;

#adicionando primary key depois de ter criado a tabela:
alter table tb_cursos
add primary key(id_cursos);

#adicionando coluna apos outra:
alter table tb_cursos
add column totaulas int unsigned after carga;

describe tb_cursos;