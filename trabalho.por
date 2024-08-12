programa {
  inteiro
    KARTS = 3

  cadeia
    kartModelo[KARTS]

  inteiro
    kartCadastrado[KARTS],
    kartAlocadoContador[KARTS],
    kartAlocado[KARTS]

  real
    kartValor[KARTS],
    kartLucro[KARTS]
  
  inteiro
    kartContador = 0

  funcao inteiro cadastrarKart(cadeia modelo, real valor) {
    se (kartContador == KARTS) {
      retorne -1
    }

    kartModelo[kartContador] = modelo
    kartValor[kartContador] = valor

    kartCadastrado[kartContador] = 1
    kartContador++

    retorne kartContador
  }

  funcao vazio mostrarCadastroDeKart() {
    limpa()

    caracter
      retornar
    cadeia
      modelo
    real
      valor

    escreva("# CADASTRO DE KART\n\n")

    escreva("Modelo:\nR: ")
    leia(modelo)

    escreva("\nValor do aluguel (R$):\nR: ")
    leia(valor)
    
    inteiro
      kartId = cadastrarKart(modelo, valor)

    // Caso `kartId` for `-1` o limite foi atingido.
    se (kartId == -1) {
      escreva("\nO limite de cadastrar karts foi atingido.")
    } senao {
      escreva("\nKart Nº ", kartId, " cadastrado!")
    }

    escreva("\n\nPressione qualquer caracter para retornar ao menu principal.\nR: ")
    leia(retornar)
  }

  funcao inicio() {
    inteiro opcao

    faca {
      limpa()

      escreva("1. Cadastrar um Kart\n")
      escreva("2. Listar Karts disponíveis\n")
      escreva("3. Listar Karts locados\n")
      escreva("4. Alugar um Kart\n")
      escreva("5. Devolver um Kart\n")
      escreva("6. Kart que mais gerou ganhos\n")
      escreva("7. Receita e lucro do dia, considerando karts locados\n")
      escreva("8. Locação de circuito\n")
      escreva("9. Atualizar dia\n")
      escreva("10. Sair do programa\n\n")

      escreva("R: ")
      leia(opcao)

      escolha (opcao) {
        caso 1: {
          mostrarCadastroDeKart()
        }
      }
    }
    enquanto (opcao != 10)
  }
}
