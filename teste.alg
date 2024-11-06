Algoritmo "Consulta"
arquivo "C:\Users\UNIP\Documents\LPA\Dados.txt"

Var
  i, j: inteiro
  x: caractere
  y: vetor [1..5] de caractere
  opcao: inteiro

Inicio
  // Cadastro das palavras
  para i de 1 ate 5 passo 1 faca
    escreva("Digite a palavra para cadastro: ")
    leia(y[i])
  fimpara

  // Menu de opções
  repita
    escreval("Escolha uma opcao:")
    escreval("1 - Consultar palavra")
    escreval("2 - Sair")
    leia(opcao)
    
    escolha opcao
      caso 1
        // Loop de pesquisa
        escreva("Digite a posição (1 a 5) para armazenar a consulta: ")
        leia(j)
        se j < 1 ou j > 5 entao
          escreval("Posição inválida!")
        senao
          escreva("Digite a palavra a consultar: ")
          leia(x)
          para i de 1 ate 5 faca
            se x = y[i] entao
              escreval("Palavra Encontrada!")
              y[j] <- x
              interrompa
            fimse
          fimpara
          se i > 5 entao
            escreval("Palavra não Encontrada!")
          fimse
        fimse
      caso 2
        escreval("Saindo...")
      outrocaso
        escreval("Opcao invalida!")
    fimescolha
  ate que opcao = 2

Fimalgoritmo
