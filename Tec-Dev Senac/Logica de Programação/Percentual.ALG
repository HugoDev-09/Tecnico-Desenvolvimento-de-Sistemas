Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/06/2024
Var
// Seção de Declarações das variáveis 
nomeproduto : caracter
precodecusto, percentual, valorvenda :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o nome do produto: ",nomeproduto)
leia(nomeproduto)
escreva("Digite o preço de custo: ",precodecusto)
leia(precodecusto)
escreva("Digite o percentual: ",percentual)
leia (percentual)
valorvenda <- (precodecusto * (percentual / 100) + precodecusto))
escreva("O produto ", nomeproduto, " sera vendido por: ",valorvenda )

Fimalgoritmo