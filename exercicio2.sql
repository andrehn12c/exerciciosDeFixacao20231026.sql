drop trigger cliente_excluido;
create trigger cliente_excluido 
before delete on Clientes 
for each row
insert into Auditoria (mensagem) values ('Tentaram excluir um cliente!!');

insert into Clientes (nome) values (
	'Rogerinho Torniquete'
);

delete from Clientes 
where nome = 'Rogerinho Torniquete'

select * from Clientes;

select * from Auditoria;
