CREATE DATABASE empreiteira;
USE empreiteira;



CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(30) NOT NULL,
CNPJ_CPF VARCHAR(20) UNIQUE NOT NULL,
NOME_FANTASIA VARCHAR(20),
TELEFONE VARCHAR(20),
EMAIL VARCHAR(40),
SITUACAO CHAR(1) NOT NULL
);

CREATE TABLE endereco(
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
RUA VARCHAR(30) ,
CIDADE VARCHAR(30) ,
UF CHAR(2) NOT NULL,
BAIRRO VARCHAR(30),
CEP VARCHAR(20) NOT NULL,
SITUACAO CHAR(2) NOT NULL
);

CREATE TABLE empreiteira(
id_empreiteira INT PRIMARY KEY AUTO_INCREMENT,
AREA_ATUACAO VARCHAR(30) NOT NULL,
TIPO_CONTRATO VARCHAR(20) NOT NULL,
SITUACAO VARCHAR(20) NOT NULL,
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE colaborador(
id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
FUNCAO VARCHAR(30) NOT NULL,
MATRICULA VARCHAR(20) ,
SALARIO DECIMAL(10,2) ,
TIPO_CONTRATO VARCHAR(20) NOT NULL,
SITUACAO VARCHAR(20) NOT NULL,
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa)REFERENCES pessoa(id_pessoa)
);

CREATE TABLE projeto(
id_projeto INT PRIMARY KEY AUTO_INCREMENT,
VALOR DECIMAL(10,2) NOT NULL,
TIPO_PROJETO VARCHAR(30),
NOME_PROJETO VARCHAR(30),
DATA_INICIO DATE ,
PREVISAO VARCHAR(15) NOT NULL,
DATA_FIM DATE ,
STATUS_PROJETO VARCHAR(30),
id_colaborador INT NOT NULL,
FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador)
);

CREATE TABLE obra(
id_obra INT PRIMARY KEY AUTO_INCREMENT,
VALOR DECIMAL(10,2),
DATA_INICIO DATE NOT NULL,
PREVISAO VARCHAR(15),
DATA_FIM DATE ,
STATUS_OBRA VARCHAR(20),
id_empreiteira INT NOT NULL,
id_projeto INT NOT NULL,
FOREIGN KEY(id_empreiteira) REFERENCES empreiteira(id_empreiteira),
FOREIGN KEY(id_projeto) REFERENCES projeto(id_projeto)
);

CREATE TABLE canteiro_obra(
id_canteiro_obra INT PRIMARY KEY AUTO_INCREMENT,
STATUS_SERVICO VARCHAR(20) NOT NULL,
id_colaborador INT NOT NULL,
id_obra INT NOT NULL,
FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador),
FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
);

SELECT * FROM pessoa;
SELECT * FROM endereco;
SELECT * FROM empreiteira;
SELECT * FROM colaborador;
SELECT * FROM projeto;
SELECT * FROM obra;
SELECT * FROM canteiro_obra;

ALTER TABLE canteiro_obra
ADD  STATUS_SERVICO VARCHAR(20) NOT NULL;

INSERT INTO pessoa(NOME,CNPJ_CPF,NOME_FANTASIA,TELEFONE,EMAIL,SITUACAO)
VALUES('Hugo Ruan','998765345-87',NULL,'(61)998676895','hugolelis@gmail.com','A'),
('Joao Maria','678890345-58',NULL,'(61)984467886','joaomaria76@gmail.com','A'),
('Jailson Reis','543198076-45',NULL,'(81)99887556', 'jailsonreismiranda@gmail.com','A'),
('Ana Costa', '345.678.901/0001-88', NULL, '(61) 93456-7890', 'ana@costaservicos.com', 'A'),
('Pedro Almeida', '456.789.012-02', NULL, '(51) 94567-8901', 'pedro@almeida.com', 'A'),
('Carlos Pereira', '678.901.234-03', 'Pereira LTDA', '(71) 96789-0123', 'carlos@pereiralta.com', 'A'),
('Fernanda Lima', '567.890.123/0001-77', 'Lima Engenharia', '(61) 95678-9012', 'fernanda@limaengenharia.com.br', 'A'),
('Mariana Ribeiro', '789.012.345/0001-66',NULL, '(61) 97890-1234', 'mariana@ribeirodesign.com', 'A'),
('Renato Martins', '890.123.456-04', 'Martins Civis', '(61) 98901-2345', 'renato@martinsimportadora.com.br', 'A'),
('Tatiane Rocha', '901.234.567/0001-55', 'Rocha Comércios', '(61) 92345-6789', 'tatiane@rochacommerce.com', 'A');

INSERT INTO endereco(RUA,CIDADE,UF,BAIRRO,CEP,SITUACAO)
VALUES('QR 127', 'Brasília', 'DF', 'Recanto das Emas', '72543609' , 'A'),
('QN 801', 'Brasilia', 'DF', 'Recanto das Emas','72355678','A'),
('Rua do Sol', 'Recife', 'PE', 'Boa Viagem', '51020-040', 'A'),
('SETOR IX', 'Brasilia', 'DF', 'Setor de Mansoes', '72312987','A'),
('Rua das Acácias', 'Porto Alegre', 'RS', 'Centro', '90010-000', 'A'),
('Avenida Sete de Setembro', 'Salvador', 'BA', 'Campo Grande', '40010-010', 'A'),
('Quadra 405 Bloco B', 'Brasília', 'DF', 'Asa Norte', '70840-000', 'A'),
('Rua 10 Norte', 'Brasília', 'DF', 'Asa Norte', '70740-200', 'A'),
('Avenida das Nações', 'Brasília', 'DF', 'Águas Claras', '71928-000', 'A'),
('Rua 12 Sul', 'Brasília', 'DF', 'Taguatinga Sul', '72110-020', 'A');

INSERT INTO empreiteira(AREA_ATUACAO,TIPO_CONTRATO,SITUACAO,id_pessoa)
VALUES('Construção de prédios','Contrato temporário', 'Ativa',7 ),
('Industrias LTDA','Contrato Fixo','Ativa',6),
('Construção civil', 'Contrato Temporário', 'Ativa',9),
('Edifícios Comerciais', 'Diárias', 'Ativa',10);

INSERT INTO colaborador(FUNCAO, MATRICULA,SALARIO,TIPO_CONTRATO,SITUACAO,id_pessoa)
VALUES('Área hidráulica', '34TR45', 4938.20,'6 meses', 'Ativo',1),
('Área elétrica', '567RED', 5678.65,'6 meses','Ativo',2),
('Arquiteto','876TR4', 5188.19,'Contrato 1 ano','Ativo',5),
('Arquiteto','642OP9',5200.28,'Contrato 1 ano','Ativo',4),
('Pedreiro','674ER4',2700.89, 'Contrato de 8 meses','Ativo',3),
('Mestre de obra','789YT5',4900.75,'Contrato 1 ano','Ativo',8);

INSERT INTO projeto(VALOR,TIPO_PROJETO,NOME_PROJETO,DATA_INICIO,PREVISAO,DATA_FIM,STATUS_PROJETO,id_colaborador)
VALUES(450000.0,'Construção de prédio', 'Residencial Bem Viver','2025-06-06', '9 meses','2026-03-06','Ajuste de Detalhes',9),
(500000.0,'Construção Industrial','Industrias Vinhos','2025-09-07','10 meses','2026-07-10','Ajustando detalhes',10),
(350000.0,'Construção civil','Instituto do bem','2025-03-06','5 meses','2025-08-10','Em andamento',10),
(150000.0,'Edificios comerciais','Condomínio Genipabu','2024-02-12','6 meses','2024-08-15','Finalizado',9);

INSERT INTO obra(VALOR,DATA_INICIO,PREVISAO,DATA_FIM,STATUS_OBRA,id_empreiteira,id_projeto)
VALUES(450000.0,'2025-06-06', '9 meses','2026-03-06','Em análise',1,5),
(500000.0,'2025-09-07','10 meses','2026-07-10','Ajustando detalhes',2,6),
(350000.0,'2025-03-06','5 meses','2025-08-10','Em andamento',3,7),
(150000.0,'2024-02-12','6 meses','2024-08-15','Finalizado',4,8);

INSERT INTO canteiro_obra(STATUS_SERVICO,id_colaborador,id_obra)
VALUES('Em análise',1,9),
('Ajustando detalhes',2,10),
('Em andamento',3,11),
('Finalizado',4,12);