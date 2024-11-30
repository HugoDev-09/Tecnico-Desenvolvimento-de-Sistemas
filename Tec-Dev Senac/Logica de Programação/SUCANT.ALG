Algoritmo "sucant"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/07/2024
Var
// Seção de Declarações das variáveis 
suc,ant,valor:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Informe um valor: ")
leia(valor)

suc <- valor + 1
ant <- valor - 1

escreval("O sucessor de ",valor," é :",suc)
escreval("O antecessor de ",valor," é :",ant)
Fimalgoritmo