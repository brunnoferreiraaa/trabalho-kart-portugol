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
    kartAluguel[KARTS], kartLucro[KARTS]
  
  inteiro
    kartContador = 0

  funcao vazio cadastrarKart() {
    limpa()

    caracter
      caracterRetornar

    se (kartContador == KARTS) {
      escreva("O numero de karts cadastrados foi atingido.\n")
    } senao {
      escreva("- CADASTRO DE KART\n\n")

      escreva("Modelo:\nR: ")
      leia(kartModelo[kartContador])

      escreva("\nValor do aluguel (R$):\nR: ")
      leia(kartAluguel[kartContador])

      kartCadastrado[kartContador] = 1
      kartContador++
    }

    escreva("\nPressione qualquer caracter para retornar ao menu principal.\nR: ")
    leia(caracterRetornar)
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
          cadastrarKart()
        }
      }
    }
    enquanto (opcao != 10)
  }
}
