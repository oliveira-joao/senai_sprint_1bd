use micromanu;

insert into Empresa (nomeEmpresa, CNPJEmpresa, enderecoEmpresa, telefoneEmpresa, siteEmpresa)
values ('MicroManu', 'XX.XXX.XXX/0001-XX', 
		'R. Bar�o de Limeira, 293', 
		'(11) 99999-9999', 'www.micromanu.com');

insert into Cliente (nomeCliente, telefoneCliente, emailCliente)
values ('Luana', '(11) 99999-9999', 'luana@gmail.com'),
	   ('Luiza', '(11) 98454-5939', 'luizinha@yahoo.com');

insert into Colaboradores (nomeColaborador, salarioColaborador, idEmpresa)
values ('Erick', 950.90, 1),
	   ('Daniel', 700.43, 1),
	   ('Jo�o', 1.203, 1);

insert into Equipamento (nomeEquipamento, idCliente)
values ('Notebook', 1),
	   ('Ipad', 1);

insert into Atendimento (horaAtendimento, problemaEquipamento, dataAtendimento, idEquipamento, idColaborador)
values ('07:33', 'Notebook n�o liga mais', '27/01/2021', 1, 3),
	   ('16:30', 'IPad n�o corresponde ao touch', '24/02/2021', 2, 1);

insert into ColaboradorAtendimento (idColaborador, idAtendimento)
values (3, 1),
	   (3, 2);