algoritmo "Nome do Programa"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : [Nome do Professor]
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : DATA_ATUAL/MES_ATUAL/ANO_ATUAL
var

poupanca, lucro, paes, broas: real

inicio

escreval("Olá, estarei calculando a quantidade de paes e broas e lhe informarei 10% do valor para lucros.")
escreva("Informe quantos pães foram vendidos: ")
leia(paes)
escreval()
escreva("Informe quantas broas foram vendidas: ")
leia(broas)

lucro <-  ((paes * 0.15) + (broas * 1.50))

poupanca <- ((lucro / 100) * 10)

escreval("O seu lucro de hoje foi equivalente a : ", lucro, " reais")
escreval()
escreval("O valor separado para sua poupança será de : ",poupanca:2:2," reais.")


fimalgoritmo
