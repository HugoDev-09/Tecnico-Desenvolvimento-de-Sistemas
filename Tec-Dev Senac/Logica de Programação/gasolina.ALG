Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/10/2024
Var
// Seção de Declarações das variáveis 
valor_compra:real
valor_desconto:real
resultado:real
usuario:caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Olá,seja bem vindo ao posto de gasolina RicardoLina, hoje estamos com uma promoção de 10% de desconto a cada 100 reais de gasolina colocado em seu veículo, gostaria de aproveitar a nossa oferta?")
escreval
escreval
escreva("Quantos reais gostaria de colocar")
leia(valor_compra)

valor_desconto <- valor_compra *10 / 100
resultado <- valor_compra - valor_desconto

se valor_compra < 100 entao

escreval("Voce pagará apenas ", valor_compra, " reais e não houve desconto.")
fimse

se  valor_compra > 100 entao
escreval("Com o desconto de 10%, voce pagará apenas ", resultado)
fimse




Fimalgoritmo