CREATE DATABASE Pessoa;

Use Pessoa;

Create table Pessoa 
(
	idPessoa int primary key identity
	,nomePessoa varchar (100) not null
	,dataNascimento date not null
	,cpf char (11) not null
	,rg char (9) not null
);

Create table Telefone 
(
	idTelefone int primary key identity
	,idPessoa int foreign key REFERENCES Pessoa(idPessoa)
	,numeroTelefone varchar (9) not null
	,operadoraTelefone varchar (5) not null
);

Create table Email
(
	idEmail int primary key identity
	,email varchar (120) not null
	,idPessoa int foreign key REFERENCES Pessoa(idPessoa)
);

Create table CNH
(
	idCNH int primary key identity
	,numeroRegistroCNH char (11) not null
	,fotoCNH varchar (250) 
);