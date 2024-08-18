programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> m

    /**
     * Cabeçalho
     */

    inteiro
        KARTS = 3

    cadeia
        kartModelo[KARTS]

    inteiro
        kartCadastrado[KARTS],
        kartAlocado[KARTS],
        kartVezesAlocado[KARTS]

    real
        kartValor[KARTS],
        kartLucro[KARTS]
    
    inteiro
        kartContador = 0

    /**
     * Funções
     */

    funcao inteiro novoKart(cadeia modelo, real valor) {
        // Função responsável por iniciar as variáveis do kart com os novos valores de cadastro.
        // A variável `kartContador` será uma variável global (visível para todas funções).
        // E sempre será incrementada `kartContador++` quando a função `novoKart` for chamada (será a variável que definirá o total de karts cadastrados).

        inteiro
            kartId = kartContador
        
        kartModelo[kartId]             = modelo
        kartValor[kartId]                = valor
        kartLucro[kartId]                = 0.0
        kartAlocado[kartId]            = 0
        kartVezesAlocado[kartId] = 0
        kartCadastrado[kartId]     = 1

        retorne kartContador++
    }

    funcao vazio mostrarCadastroDeKart() {
        limpa()

        se (kartContador != KARTS) {
            cadeia
                modelo
            real
                valor

            escreva("# CADASTRO DE KART\n\n")

            escreva("Modelo:\nR: ")
            leia(modelo)

            escreva("\nValor do aluguel (R$):\nR: ")
            leia(valor)
            
            // Como a função `novoKart` tem um retorno `retorne kartContador++` então esse é valor que será armazenado na variável `kartId` abaixo.
            // A variável `kartId` receberá o número (ID) do novo kart cadastrado (Seria o mesmo de `kartContador`).
            inteiro
                kartId = novoKart(modelo, valor)

            escreva("\nKart Nº ", kartId, " cadastrado!")
        } senao {
            escreva("O limite de cadastrar karts foi atingido.")
        }

        caracter
            pausar

        escreva("\n\nPressione qualquer caracter para retornar ao menu principal.\nR: ")
        leia(pausar)
    }

    funcao vazio mostrarKartsDisponiveis() {
        limpa()

        inteiro
            disponivelContador = 0

        escreva("# KARTS DISPONÍVEIS:\n\n")

        para (inteiro i = 0; i < kartContador; i++) {
            se (kartCadastrado[i] == 1 e kartAlocado[i] == 0) {
                escreva("Nº ", i, " | MODELO: ", kartModelo[i], " | ALUGUEL: R$ ", m.arredondar(kartValor[i], 2), "\n")
                disponivelContador++
            }
        }

        se (disponivelContador == 0) {
            escreva("Não há nenhum kart disponível.\n")
        }

        caracter
            pausar

        escreva("\nPressione qualquer caracter para retornar ao menu principal.\nR: ")
        leia(pausar)
    }

    /**
     * Inicio
     */

    funcao inicio() {
        inteiro
            opcao

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
            escreva("0. Sair do programa\n\n")

            escreva("R: ")
            leia(opcao)

            escolha (opcao) {
                caso 1: {
                    mostrarCadastroDeKart()
                    pare
                }

                caso 2: {
                    mostrarKartsDisponiveis()
                    pare
                }
            }
        }
        enquanto (opcao != 0)
    }
}
