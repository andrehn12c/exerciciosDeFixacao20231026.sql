delimiter //

create trigger after_update_cliente after update on Clientes for each row
begin
    insert into Auditoria(mensagem) values(concat('Mudaram o nome de um cliente! Ele estava como', old.nome,' e agora mudou para ', new.nome));
end //

delimiter ;