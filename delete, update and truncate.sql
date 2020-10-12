#Manipulando dados de linhas

select *from tb_gafanhotos;

select * from tb_cursos;

#inserindo dados na tabela de cursos:
insert into tb_cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','30','15','2016'),
('7','Word','Curso Completo de Word','40','30','2018'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

#corrigindo dados da tabela cursos:
update tb_cursos
set nome = 'HTML5'
where id_curso = '1';

#corrigindo duas colunas da tabela:
update tb_cursos
set nome = 'PHP', ano = '2015'
where id_curso = '4';

#corrigindo e limitando a correção a uma linha:
update tb_cursos
set nome = 'Java', carga = '40', ano = '2015'
where id_curso = '5'
limit 1; # <- esse comando é para update seguro. Quando a opção de save update está desativada no MySQL. Não é recomendável desativar essa opção.

#deletando linha da tabela:
delete from tb_cursos
where id_curso = '8';

#deletando mais de uma linha ao mesmo tempo:
delete from tb_cursos
where ano  = '2018'
limit 2;

#Removendo todas as linhas da tabela:
truncate tb_cursos;

select * from tb_cursos;


