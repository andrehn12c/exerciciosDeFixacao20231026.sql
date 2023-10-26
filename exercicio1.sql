drop trigger cliente_novo ;
create trigger cliente_novo 
	after insert on Clientes
	for each row
insert into Auditoria (mensagem) 
values(
	concat('Nome alterado á(s)',current_timestamp(), '.')
);

insert into Clientes (nome)
values ( 
    'Rogerinho Torniquete'
);

select * from Auditoria;
