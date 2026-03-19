// Instituição: Eu mesmo
//
// Arquivo: IMC.por
//Data: 18/03/2026
// Autor: Iago Fernando Giarola de Oliveira
//Descrição:
// Ler a altura de uma pessoa, e o peso e calcular o imc com base nesses dados
programa
{
	
	funcao inicio()
	{
	     real altura, peso, imc
	     escreva ("qual a sua altura (em metros) :")
	     
	     leia (altura)

	     escreva ("qual o seu peso :")

	     leia (peso)
	     limpa()
          
	     escreva ("seu imc e: ")
	     escreva ((peso/(altura*altura)))

	     escreva("\n")
	     
	     escreva ("<18.5 magro,18.5 a 24.9 normal, 25 a 29.9 sobrepeso,  30 a 34.9 Obesidade grau I,\n")
	     escreva (" 35 a 39.9 Obesidade grau II, >40 Obesidade grau III(risco de morte)\t") 
		
	}
}
