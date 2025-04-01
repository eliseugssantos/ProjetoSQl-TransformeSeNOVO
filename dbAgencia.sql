drop database dbAgencia;

create database dbAgencia;
use dbAgencia;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email  varchar(100),
talcel char(10),
cpf char (14)not null unique,
sexo char(1) default 'F'check (sexo in('F','M','N')),
salario decimal(9,2)default 0  check (salario >= 0 ),
primary key(codFunc)
);

insert into tbFuncionarios(nome,email,talcel,cpf,sexo,salario)
	values('Luikinha o nn','Luikinha.@gmail.com','97852-4718', '258.258.369-88','M',4500.51);
	
insert into tbFuncionarios(nome,email,talcel,cpf,sexo,salario)
	values('Marcos jr', 'Marcosjr.@gmail.com','99995-4718', '333.444.555.66', 'M',4500.51);
 
 insert into tbFuncionarios(nome,email,talcel,cpf,sexo,salario)
	values('Lionel Messi', 'Messi.@gmail.com','98888-4718','555.444.333.22','M', 2555.51);

 insert into tbFuncionarios(nome,email,talcel,cpf,sexo,salario)
	values('Joao p', 'jp.@gmail.com','97777-4718','657.444.333.22','M', 2599.51);

 insert into tbFuncionarios(nome,email,talcel,cpf,sexo,salario)
	values('Fabricio ll', 'Fabricio.@gmail.com','98988-5588','895.744.338.27','M', 2753.55);

select * from tbFuncionarios;

select nome,email from tbFuncionarios;
select nome,salario from tbFuncionarios;
select cpf,talcel from tbFuncionarios;

select codFunc as 'Codigo',nome as'Nome' from tbFuncionarios;