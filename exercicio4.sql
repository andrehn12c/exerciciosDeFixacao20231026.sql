DELIMITER //
CREATE TRIGGER trg_tentativa_add_nome
BEFORE INSERT ON Clientes
FOR EACH ROW
BEGIN
    IF NEW.nome IS NULL OR NEW.nome = '' THEN
        INSERT INTO Auditoria (mensagem) VALUES ('Tentativa de atualização de nome inválida em Clientes');
    END IF;
END;
//
DELIMITER ;