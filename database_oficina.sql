drop database oficina;

create database oficina;
use oficina;

CREATE TABLE Cliente (
	idCliente int auto_increment primary key,
	Nome varchar(60) NOT NULL,
    CPF char(11) not null,
	Fone char(11) NOT NULL,
	Endereco varchar(255) NOT NULL,
	constraint unique_cpf_client unique(CPF)
);

alter table Cliente auto_increment=1;

CREATE TABLE Veiculo (
	idVeiculo int auto_increment primary key,
	Placa char(7) NOT NULL,
	Marca_modelo varchar(30) NOT NULL,
	Cor varchar(15) NOT NULL,
	Ano char(4) NOT NULL,
	CONSTRAINT fk_veiculo_cliente FOREIGN KEY (idVeiculo) REFERENCES Cliente(idCliente),
    constraint unique_placa_veiculo unique(Placa)
);

alter table Veiculo auto_increment=1;

CREATE TABLE Servico (
	idServico int auto_increment primary key,
	idStatus enum('Cancelado','Concluído','Em Andamento')  default 'Em Andamento',
    Descricao varchar(255) NOT NULL,
	Data timestamp NOT NULL DEFAULT now(),
	DataEncerramento timestamp,
  	CONSTRAINT fk_servico_veiculo FOREIGN KEY (idServico) REFERENCES Veiculo (idVeiculo)
);

alter table Veiculo auto_increment=1;

create table payments(
	idPayment int auto_increment,
    typePayment enum('Boleto','Cartão','2 ou mais Cartões'),
    limitAvailable float,
    primary key(idPayment),
    CONSTRAINT fk_payments_servico FOREIGN KEY (idPayment) REFERENCES Servico (idServico)
);

alter table payments auto_increment=1;

desc payments;

show databases;
use oficina;
show tables;