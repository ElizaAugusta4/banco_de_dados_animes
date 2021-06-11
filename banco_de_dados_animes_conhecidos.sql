#banco de dados# 
 
create database animes
default character set utf8
default collate utf8_general_ci;

use animes;

#criacao da tabela generos de animes#

create table animes_populares (
id int not null auto_increment,
data date,
nome varchar(30) Not Null,
genero_do_anime varchar(30),
primary key(id)
) Default Charset = utf8;
 
select * from animes_populares;
 
 #inserir dados#
 
insert into animes_populares 
(id, data, nome, genero_do_anime)
values
('1','2015-01-12','Naruto','Shounen'),
('2','2015-01-12','Suggar Life','Mistério'),
('3','2012-01-18','Nanatsu No tasai','Shounen'),
('4','2018-12-12','DBZ','Shounen'),
('5','2016-01-18','Kill la kill','Aventura');

#alterar a tabela#

alter table animes_populares
add column protagonista varchar(30);
 
 #eliminar a coluna desnecessaria da tabela#
 
 alter table animes_populares
 drop column protagonista;
 
 #alterar a tabela mudando o tipo de variavel#
 
 alter table animes_populares
 modify column nome varchar(20) not null;
 
 #alterar o nome da coluna da tabela#
 
 alter table animes_populares
 change column nome nome_do_anime varchar(20) not null;
 
 #alterar o nome da tabela#
 
 alter table animes_populares
 rename to animes_conhecidos;
 
 create table if not exists animes_shoujo (
 nome_do_shoujo varchar(20) not null,
 ano year,
 nome_protagonista varchar(20)
 ) default charset utf8mb4;

#adicionando identificacao na tabela#
 
 alter table animes_shoujo
 add column idshoujo int first;

#adicionando a chave primaria#
 
 alter table animes_shoujo
 add primary key(idshoujo);
 
#apagar a tabela animes shoujo#

drop table animes_shoujo;

describe animes_conhecidos;


