SELECT * FROM sistema_clinica.entrada_saida;


SELECT saldo_lucro  FROM entrada_saida WHERE id_entrada_saida = 1;


UPDATE entrada_saida SET saldo_lucro = (2516.9+recebimento) WHERE id_entrada_saida =19;
SELECT * FROM entrada_saida;
SELECT * FROM pessoa;
SELECT * FROM cliente;
SELECT id_cliente FROM cliente WHERE id_pessoa = (SELECT id_pessoa FROM pessoa WHERE nome = "Wanaria Miranda Pereira");
SELECT id_funcionario FROM funcionario WHERE id_pessoa =(SELECT id_pessoa FROM pessoa WHERE nome = "Wanaria Miranda Pereira");


SELECT saldo_lucro FROM entrada_saida ORDER BY id_entrada_saida DESC LIMIT 1;
(SELECT saldo_lucro FROM entrada_saida ORDER BY id_entrada_saida DESC LIMIT 1) - recebimento

SELECT saldo_lucro sc FROM entrada_saida es ON  sc.id_entrada_saida = es.entrada_saida
SELECT * FROM saldo_lucro sc INNER JOIN entrada_saida es ON  sc.id_entrada_saida = es.entrada_saida;

SELECT (SELECt SUM(recebimento) FROM entrada_saida WHERE receita_despesa = 'Receita')-(SELECt SUM(recebimento) FROM entrada_saida WHERE receita_despesa = 'Despesa') AS saldo_final

INSERT INTO entrada_saida(data_entrada_valor,recebimento,descricao,categoria,nome_receita,receita_despesa,saldo_lucro)"
            +"VALUES(?,?,?,?,?,?,(recebimento +(SELECT saldo_lucro FROM entrada_saida ORDER BY id_entrada_saida DESC LIMIT 1)))