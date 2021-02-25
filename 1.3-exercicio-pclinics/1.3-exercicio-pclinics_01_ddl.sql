create database PCCLINICS;

use PCCLINICS;

create table Clinica
(
	idClinica int primary key identity
	,enderecoClinica varchar (100) not null
	,nomeClinica varchar (50) not null
	,telefoneClinica varchar (11) not null
);

create table Dono
(
	idDono int primary key identity
	,nomeDono varchar (50) not null
	,idadeDono char (2) not null
	,telefoneDono varchar (9) not null
);

create table Veterinario
(
	idVeterinario int primary key identity
	,idClinica int foreign key references Clinica(idClinica)
	,nomeVeterinario varchar (100) not null
	,crmVeterinario char (6) not null
	,idadeVeterinario char (2)
);

create table TipoPet
(
	idTipoPet int primary key identity
	,tipoPet varchar (100) not null
);

create table Raca 
(
	idRaca int primary key identity
	,idTipoPet int foreign key references TipoPet(idTipoPet)
	,nomeRaca varchar(40) not null
);

create table Pet
(
	idPet int primary key identity
	,nomePet varchar (20) not null
	,dataNascimento date not null
	,idRaca int foreign key references Raca(idRaca)
	,idDono int foreign key references Dono (idDono)
);

create table Atendimento
(
	idAtendimento int primary key identity
	,horaAtendimento time not null
	,fichaCadastroPet varchar (150) not null
	,dataAtendimento date not null
);

