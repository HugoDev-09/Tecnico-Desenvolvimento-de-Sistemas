Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/06/2024
Var
// Se��o de Declara��es das vari�veis 
nota1, nota2, nota3, nota4, media : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite a primeira nota: ")
leia (nota1)
escreva("Digite a segunda nota: ")
leia (nota2)
escreva("Digite a terceira nota: ")
leia (nota3)
escreva("Digite a quarta nota: ")
leia (nota4)

media <- (nota1+nota2+nota3+nota4) / 4
   se (media >=6) entao
      escreva ("Aluno aprovado! com a media : ",media)
   fimse
   
   se (media <5) entao
       escreva ("Aluno reprovado!, com a media :",media)
   fimse
   
   se (media < 6) e (media >= 5) entao
      escreva ("Aluno de recupera��o!, com a media :",media)
   fimse


Fimalgoritmo