use oficina;

show tables;

insert  into Cliente(Nome, CPF, Fone, Endereco) values
				('João Francisco de Almeida', 98765432109, 81998765432, 'Av Boa Viagem, 1000, Boa Viagem, Recife-PE'),
                ('Maria Joaquina de Amaral Pereira', 87654321098, 81987654321, 'Av Ayrton Senna, 1250, Piedade, Jaboatão-PE');

insert into Veiculo(Placa, Marca_modelo, Cor, Ano) values
				('REC1P71', 'VW Polo', 'Preta', 2020),
                ('PPP2323', 'Honda H-RV', 'Cinza', 2018);
                
insert into Servico(idStatus, Descricao) values
				('Concluído', 'Troca de pastilhas de freio'),
                (default, 'Troca do câmbio');
                


insert into payments (typePayment) values
				('Boleto'),
                ('Cartão');
                


select * from Cliente;
select count(*) from Cliente where Nome;


Show tables;


