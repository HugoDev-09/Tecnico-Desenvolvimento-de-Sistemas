SELECT  * FROM consulta;##Npme, cpf,telefone,codigo-carteirinha,agendamento,status_consulta
SELECT 
p2.NOME AS paciente ,
p2.CPF AS paciente ,
p2.TELEFONE AS paciente,
p.CODIGO_CARTEIRINHA,
p.AGENDAMENTO,
c.STATUS_CONSULTA

FROM consulta c
INNER JOIN paciente p ON p.id_paciente = p.id.paciente
INNER JOIN pessoa p2 ON p.id_pessoa = m.id_pessoa