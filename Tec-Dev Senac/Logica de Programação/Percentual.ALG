Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/06/2024
Var
// Se��o de Declara��es das vari�veis 
nomeproduto : caracter
precodecusto, percentual, valorvenda :real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite o nome do produto: ",nomeproduto)
leia(nomeproduto)
escreva("Digite o pre�o de custo: ",precodecusto)
leia(precodecusto)
escreva("Digite o percentual: ",percentual)
leia (percentual)
valorvenda <- (precodecusto * (percentual / 100) + precodecusto))
escreva("O produto ", nomeproduto, " sera vendido por: ",valorvenda )

Fimalgoritmo