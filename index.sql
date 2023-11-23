create schema rede_social;

use rede_social;

create table usuarios(
id_usuarios int primary key not null,
nome_usuario varchar(55) not null,
data_nascimento date not null
);

create table postagens(
id_postagens int primary key not null not null,
texto varchar(255),
data_hora datetime not null,
id_usuarios int,
constraint id_usuarios foreign key (id_usuarios) references usuarios(id_usuarios)
);

create table comentarios(
id_comentarios int primary key not null,
texto varchar(255) not null,
data_hora datetime not null,
id_usuarios_us int,
constraint id_usuarios_us foreign key (id_usuarios_us) references usuarios(id_usuarios),
id_postagens int,
constraint id_postegens foreign key (id_postagens) references postagens(id_postagens)
);

create table amizades(
id_amizade int primary key not null unique auto_increment,
id_usuario1 int,
constraint id_usuario1 foreign key (id_usuario1) references usuarios(id_usuarios),
id_usuario2 int,
constraint id_ususario2 foreign key (id_usuario2) references usuarios(id_usuarios)		
);

alter table amizades add column data_conexao date not null;

create table curtidas(
id_curtidas int primary key not null unique auto_increment,
id_usu int,
constraint id_usu foreign key (id_usu) references usuarios(id_usuarios),
id_post int,
constraint id_post foreign key (id_post) references postagens(id_postagens),
data_curtidas date
);

alter table curtidas modify column data_curtidas date not null;

create table grupos(
id_grupos int primary key not null unique auto_increment,
nome varchar(50) not null,
descricao varchar(255)
);

create table membros_grupo(
id_membros int primary key unique not null auto_increment,
usuario_gp int,
constraint usuario_gp foreign key (usuario_gp) references usuarios(id_usuarios),
id_grupos_mb int,
constraint id_grupos foreign key (id_grupos_mb) references grupos(id_grupos),
data_adesao date not null
);









