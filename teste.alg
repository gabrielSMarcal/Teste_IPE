Algoritmo "Consulta"
arquivo "C:\Users\UNIP\Documents\LPA\Dados.txt"

Var
  i, j: inteiro
  x: caractere
  y: vetor [1..5] de inteiro

Inicio
  para i de 1 ate 5 passo 1 faca
    escreva("Digite a palavra a consultar: ")
    leia(x)
    y[i] <- x
    se x = y[i] entao
      escreval("Palavra Encontrada!")
    senao
      escreval("Palavra não Encontrada!")
    fimse
  fimpara
Fimalgoritmo
