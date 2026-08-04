programa
{
    funcao inicio()
    {
        // Variáveis de Receita e Descontos de Folha
        real salarioBruto
        real custoCestaBasica, custoPlanoSaude, custoAlimentacaoEmpresa, gastoRealTransporte
        real inss = 0.0, descontoVT = 0.0, totalDescontosFolha, salarioLiquido

        // Despesas de Casa e Médicas
        real gastoAluguel, gastoAlimentacaoCasa, gastoAgua, gastoEletricidade, despesasMedicas
        real totalNecessidadesReais

        // Variáveis do Método 50-30-20
        real metaNecessidades, metaDesejos, metaPoupanca
        real saldoNecessidades

        // 1. ENTRADA DE DADOS: Trabalho
        escreva("Salário bruto (R$): ")
        leia(salarioBruto)

        escreva("Desconto folha - Cesta Básica (R$): ")
        leia(custoCestaBasica)

        escreva("Desconto folha - Plano de Saúde (R$): ")
        leia(custoPlanoSaude)

        escreva("Desconto folha - Vale-Alimentação (R$): ")
        leia(custoAlimentacaoEmpresa)

        escreva("Gasto real com transporte (R$): ")
        leia(gastoRealTransporte)

        // 2. ENTRADA DE DADOS: Custos de Vida e Saúde
        escreva("\n--- DESPESAS DE CASA E SAÚDE ---\n")
        escreva("Valor do Aluguel (R$): ")
        leia(gastoAluguel)

        escreva("Gasto extra com Alimentação/Mercado (R$): ")
        leia(gastoAlimentacaoCasa)

        escreva("Conta de Água (R$): ")
        leia(gastoAgua)

        escreva("Conta de Luz/Eletricidade (R$): ")
        leia(gastoEletricidade)

        escreva("Despesas Médicas Extras/Remédios (R$): ")
        leia(despesasMedicas)

        // 3. CÁLCULO DO INSS PROGRESSIVO
        se (salarioBruto <= 1518.00)
        {
            inss = salarioBruto * 0.075
        }
        senao se (salarioBruto <= 2793.88)
        {
            inss = (1518.00 * 0.075) + ((salarioBruto - 1518.00) * 0.09)
        }
        senao se (salarioBruto <= 4190.83)
        {
            inss = (1518.00 * 0.075) + ((2793.88 - 1518.00) * 0.09) + ((salarioBruto - 2793.88) * 0.12)
        }
        senao se (salarioBruto <= 8157.41)
        {
            inss = (1518.00 * 0.075) + ((2793.88 - 1518.00) * 0.09) + ((4190.83 - 2793.88) * 0.12) + ((salarioBruto - 4190.83) * 0.14)
        }
        senao
        {
            inss = 951.62 
        }

        // 4. CÁLCULO DO VALE-TRANSPORTE (Teto de 6%)
        real limiteDescontoVT = salarioBruto * 0.06
        se (gastoRealTransporte > limiteDescontoVT)
        {
            descontoVT = limiteDescontoVT
        }
        senao
        {
            descontoVT = gastoRealTransporte
        }

        // 5. CÁLCULO DO SALÁRIO LÍQUIDO DISPONÍVEL
        totalDescontosFolha = inss + descontoVT + custoCestaBasica + custoPlanoSaude + custoAlimentacaoEmpresa
        salarioLiquido = salarioBruto - totalDescontosFolha

        // 6. APLICAÇÃO DAS METAS DO MÉTODO 50-30-20
        metaNecessidades = salarioLiquido * 0.50
        metaDesejos = salarioLiquido * 0.30
        metaPoupanca = salarioLiquido * 0.20

        // 7. CÁLCULO DAS NECESSIDADES REAIS (Incluindo as Despesas Médicas)
        totalNecessidadesReais = gastoAluguel + gastoAlimentacaoCasa + gastoAgua + gastoEletricidade + despesasMedicas
        saldoNecessidades = metaNecessidades - totalNecessidadesReais

        // 8. EXIBIÇÃO DO PLANEJAMENTO
        escreva("\n================ ANÁLISE FINACEIRA 50-30-20 ================")
        escreva("\n(=) SALÁRIO LÍQUIDO DISPONÍVEL: R$ ", salarioLiquido)
        escreva("\n------------------------------------------------------------")
        escreva("\n[50% - NECESSIDADES] Orçamento Máximo: R$ ", metaNecessidades)
        escreva("\n(-) Suas Necessidades Totais Reais   : R$ ", totalNecessidadesReais)
        
        se (saldoNecessidades >= 0)
        {
            escreva("\n(=) Sobrou no orçamento de necessidades: R$ ", saldoNecessidades)
        }
        senao
        {
            escreva("\n(X) ORÇAMENTO ESTOURADO! Déficit de: R$ ", (saldoNecessidades * -1))
        }
        
        escreva("\n------------------------------------------------------------")
        escreva("\n[30% - DESEJOS] Permitido gastar com Lazer : R$ ", metaDesejos)
        escreva("\n[20% - POUPANÇA] Valor fixo para Investir  : R$ ", metaPoupanca)
        escreva("\n============================================================")
    }
}
