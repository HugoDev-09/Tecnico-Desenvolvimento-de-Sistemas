Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/10/2024
Var
// Se��o de Declara��es das vari�veis 
valor_compra:real
valor_desconto:real
resultado:real
usuario:caracter
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Ol�,seja bem vindo ao posto de gasolina RicardoLina, hoje estamos com uma promo��o de 10% de desconto a cada 100 reais de gasolina colocado em seu ve�culo, gostaria de aproveitar a nossa oferta?")
escreval
escreval
escreva("Quantos reais gostaria de colocar")
leia(valor_compra)

valor_desconto <- valor_compra *10 / 100
resultado <- valor_compra - valor_desconto

se valor_compra < 100 entao

escreval("Voce pagar� apenas ", valor_compra, " reais e n�o houve desconto.")
fimse

se  valor_compra > 100 entao
escreval("Com o desconto de 10%, voce pagar� apenas ", resultado)
fimse




Fimalgoritmo