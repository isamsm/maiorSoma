programa {
  funcao soma(inteiro primeiro, inteiro segundo, inteiro terceiro, inteiro quarto, inteiro quinto) {
    inteiro li, ls, somaMax, aux, i, j, k, a, n[5]
    somaMax = 0
    n[0] = primeiro
    n[1] = segundo
    n[2] = terceiro
    n[3] = quarto
    n[4] = quinto

    para(i = 0; i < 5; i++) {
      aux = 0
      para(j = i; j < 5; j++) {
        aux = aux + n[j]
        se (aux < 0) {
          i = j 
          a = i + 1
          aux = 0
        }
        se (aux > somaMax) {
          somaMax = aux;
          li = a;
          ls = j;
        }
      }
    }

    escreva("\nSoma: ", somaMax)
    escreva("\nLimite inferior: ", li + 1)
    escreva("\nLimite superior: ", ls + 1)
  }

  funcao inicio() {
    soma(-10, 2, 30, 300, -18)
  }
}