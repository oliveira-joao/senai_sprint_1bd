--DDL-

CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Generos
(
	idGenero int primary key identity
	,nomeGenero varchar (200) not null
);

CREATE TABLE Filmes 
(
	idFilme int primary key identity
	,idGenero int foreign key REFERENCES Generos(idGenero)
	,tituloFilme varchar (250) not null
);



