USE agenda;

DELIMITER $$
--  função que conta quantas tuplas tem na tabela PESSOA.
CREATE FUNCTION conta_pessoa ()
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE response INT;
	SELECT count(*) INTO response FROM pessoa;
    RETURN response;
END $$

-- procedimento que conte quantos telefones tem uma pessoa específica.
CREATE PROCEDURE conta_telefone (IN p_idPessoa INT, OUT qtd_telefone INT)
BEGIN
	SELECT count(*) INTO qtd_telefone 
    from telefone t 
    WHERE t.idPessoa = p_idPessoa;
END $$

-- função que mostre a quantidade de 
-- produtos específico que será solicitado pelo nome do produto.
CREATE FUNCTION qtd_produtos (p_nome_produto VARCHAR(80))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE response INT;
	SELECT qtde INTO response 
    FROM produtos 
    WHERE nome = p_nome_produto;
    RETURN response;
END $$

-- função que calcule para um produto 
-- específico a quantidade financeira 
-- em estoque que está armazenado nessa 
-- base de dados (total em valor financeiro R$).
CREATE FUNCTION valor_produto (p_nome_produto VARCHAR(80))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE response INT;
	SELECT qtde*preco INTO response 
    FROM produtos 
    WHERE nome = p_nome_produto;
    RETURN response;
END $$

DELIMITER ;
