create database OPTUS;

use optus;

create table Artista
(
	idArtista int primary key identity
	,nomeArtista varchar (50) not null
);

create table Usuario
(
	idUsuario int primary key identity
	,nomeUsuario varchar (100) not null
	,email varchar (100) not null
	,senha varchar (50) not null
	,tipoPermissao varchar(10) not null
);

create table Estilo
(
	idEstilo int primary key identity
	,nomeEstilo varchar (80) not null
);

create table Album
(
	idAlbum int primary key identity
	,idEstilo int foreign key references Estilo(idEstilo)
	,idArtista int foreign key references Artista(idArtista)
	,tituloAlbum varchar (50) not null
	,dataLancamentoAlbum date not null
	,localizacaoAlbum varchar (150) not null
	,qtdMntAlbum int not null
	,albumAtivoOuNao varchar (5) not null
);

create table AlbumEstilo
(
	idAlbum int foreign key references Album(idAlbum)
	,idEstilo int foreign key references Estilo (idEstilo)
);