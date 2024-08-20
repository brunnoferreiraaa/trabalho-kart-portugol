programa {
  inteiro circuitoAlocado[3]

  funcao inicio() {
    inteiro indice

    faca {
      para (inteiro i = 0; i < 3; i++) {
        // Caso o circuito for alocado não apareceçá
        se (circuitoAlocado[indice] == 0) {
          escreva(i+1, ". Circuito\n")
        }
      }

      escreva("\nEscolha um circuito:\nR:")
      leia(indice)

      // Alocou um circuito
      circuitoAlocado[indice] = 1

    // Enquanto o indice NÃO for >= 0 e < 3 continuará (Isso serve para não ficar fora dos limites de 0 até 2 que é o tamanho do vetor)
    } enquanto (nao (indice >= 0 e indice < 3))
  }
}
