Algoritmo "Consulta"
arquivo "C:\\Users\\UNIP\\Documents\\LPA\\Dados.txt"

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
        escreva("Digite a palavra a consultar: ")
        leia(x)
        j <- 0 // Inicializa o contador de palavras encontradas
        para i de 1 ate 5 faca
          se x = y[i] entao
            escreval("Palavra Encontrada!")
            j <- j + 1
            interrompa
          fimse
        fimpara
        se j = 0 entao
          escreval("Palavra não Encontrada!")
        senao
          escreval("Total de palavras encontradas: ", j)
        fimse
      caso 2
        escreval("Saindo...")
      outrocaso
        escreval("Opcao invalida!")
    fimescolha
  ate que opcao = 2

Fimalgoritmo
