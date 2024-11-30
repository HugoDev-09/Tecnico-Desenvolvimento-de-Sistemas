Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/06/2024
Var
// Seção de Declarações das variáveis 
nota1, nota2, nota3, nota4, media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
      escreva ("Aluno de recuperação!, com a media :",media)
   fimse


Fimalgoritmo