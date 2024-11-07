Algoritmo "Consulta"
arquivo "C:\Users\gabri\OneDrive\Documentos\teste.txt"

Var
  i, j: inteiro
  x: caractere
  y: vetor [1..10] de caractere
  opcao: inteiro

Inicio
  // Inicializa o vetor com palavras do arquivo
  para i de 1 ate 5 faca
    leia(y[i])
  fimpara

  // Menu de opções
  opcao <- 0
  enquanto opcao <> 3 faca
    escreval("Escolha uma opcao:")
    escreval("1 - Consultar palavra")
    escreval("2 - Cadastrar palavra")
    escreval("3 - Sair")
    leia(opcao)

    escolha opcao
      caso 1
        // Loop de pesquisa
        escreva("Digite a palavra a consultar: ")
        leia(x)
        j <- 0 // Inicializa o índice para pesquisa
        para i de 1 ate 7 faca
          se x = y[i] entao
            escreval("Palavra Encontrada na posição ", i)
            j <- 1
            interrompa
          fimse
        fimpara
        se j = 0 entao
          escreval("Palavra não Encontrada!")
        fimse
      caso 2
        // Cadastro de palavra
        escreva("Digite a palavra a cadastrar: ")
        leia(x)
        j <- 0 // Inicializa o índice para cadastro
        para i de 1 ate 7 faca
          se y[i] = "" entao
            y[i] <- x
            escreval("Palavra cadastrada na posição ", i)
            j <- 1
            // Escreve a nova palavra no arquivo
            abrearquivo(arquivo)
            para i de 1 ate 7 faca
              escreva(y[i])
            fimpara
            fechearquivo
            interrompa
          fimse
        fimpara
        se j = 0 entao
          escreval("Não há espaço para cadastrar mais palavras!")
        fimse
      caso 3
        escreval("Saindo...")
      outrocaso
        escreval("Opcao invalida!")
    fimescolha
  fimenquanto

Fimalgoritmo
