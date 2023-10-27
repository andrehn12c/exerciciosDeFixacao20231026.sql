DELIMITER //
CREATE TRIGGER trg_depois_atualiza_produtos
AFTER INSERT ON Pedidos
FOR EACH ROW 
BEGIN
UPDATE Produtos SET estoque = estoque - quantidade 
WHERE produto_id = Produtos(produto_id);
    IF estoque > 5 THEN
        INSERT INTO Auditoria(mensagem) VAlUES("Estoque acabando");
    END IF;
END;
//
DELIMITER ;