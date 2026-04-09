programa {
  funcao inicio() {
    real n1, n2, resultado
    caracter operacao

    escreva("Digite o primeiro número: ")
    leia(n1)
    escreva("Digite a operação (+, -, *, /): ")
    leia(operacao)
    escreva("Digite o segundo número: ")
    leia(n2)

    escolha(operacao) {
      caso '+':
        resultado = n1 + n2
        pare
      caso '-':
        resultado = n1 - n2
        pare
      caso '*':
        resultado = n1 * n2
        pare
      caso '/':
        // Verificação simples para divisão por zero
        se (n2 != 0) {
          resultado = n1 / n2
        } senao {
          escreva("Erro: Divisão por zero!\n")
          resultado = 0.0
        }
        pare
      caso contrario:
        escreva("Operação inválida!\n")
        resultado = 0.0
    }
    
    escreva("Resultado: ", resultado, "\n")
  }
}
