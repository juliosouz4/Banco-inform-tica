programa
{
	
	funcao inicio()
	{
	real saldo = 0, deposito, saque, investimento
    cadeia repeticao, senha = "teste", pswd = "", extrato = ""
    inteiro opcao = 0, meses

    enquanto(opcao != 0)
    {
    escreva("|--------Menu--------|\n")
    escreva("| 1-Saldo: R$", saldo, "\n")
    escreva("| 2-Deposito         |\n")   
    escreva("| 3-Saque            |\n")
    escreva("| 4-Extrato          |\n")
    escreva("| 5-Investimento     |\n")
    escreva("| 0-Sair             |\n")
    escreva("|--------------------|\n")
    escreva("Selecione as opções acima: ")
    leia(opcao)
    limpa()
    
    escolha(opcao)
    {
      caso 1:
      escreva("SALDO: R$", saldo,"\n")
      escreva("Aperte ENTER para proseguir: ")
      leia(repeticao)
      limpa()
      pare

      caso 2:
       escreva("Digite sua senha: ")
       leia(pswd)
       limpa()
       enquanto(pswd != senha)
       {
         escreva("Senha invalida, tente novamente: ")
         leia(pswd)
         limpa()
       }
       escreva("Digite o valor a depositar: ")
       leia(deposito)
       limpa()
       enquanto(deposito < 0)
       {
         escreva("Digite um valor valido: ")
         leia(deposito)
         limpa()
       }
       saldo = saldo + deposito
       extrato = extrato + "DEPOSITO---------R$" + deposito +"\n"
       escreva("Seu saldo agora é: ", saldo ,"\n")
       escreva("Aperte ENTER para prosseguir: ")
       leia(repeticao)
       limpa()
      pare

      caso 3:
       escreva("Digite a sua senha: ")
       leia(pswd)
       limpa()
       enquanto(pswd != senha)
       {
         escreva("Senha errada, tente novamente: ")
         leia(pswd)
         limpa()
       }
       escreva("Digite o valor para sacar: ")
       leia(saque)
       limpa()
       enquanto(saque < 0 ou saque > saldo)
       {
         escreva("Invalido, digite outro valor: ")
         leia(saque)
       }
       saldo = saldo - saque
       extrato = extrato + "SAQUE---------R$" + saque +"\n"
       escreva("Você retirou R$", saque, " e agora tem R$", saldo, "\n")
       escreva("Aperte ENTER para prosseguir: ")
       leia(repeticao)
       limpa()
       pare

      caso 4:
       escreva("Digite a sua senha: ")
       leia(pswd)
       limpa()
       enquanto(pswd != senha)
       {
         escreva("Senha errada, tente novamente: ")
         leia(pswd)
         limpa()
       }
       escreva(extrato)
       escreva("\nAperte ENTER para prosseguir: ")
       leia(repeticao)
       limpa()
      pare

      caso 5:
       escreva("Digite a sua senha: ")
       leia(pswd)
       limpa()
       enquanto(pswd != senha)
       {
         escreva("Senha errada, tente novamente: ")
         leia(pswd)
         limpa()
       }
       escreva("Quantidade para investir: ")
       leia(investimento)
       enquanto(investimento < 0 ou investimento > saldo)
        {
         limpa()
         escreva("Digite um valor valido: ")
         leia(investimento)
        }
       saldo = saldo - investimento
       escreva("Meses para investir: ")
       leia(meses)
       limpa()
       enquanto(meses < 0)
       {
         escreva("Digite um valor valido: ")
         leia(meses)
         limpa()
       }
       para(inteiro contadorMeses = 0; contadorMeses < meses; contadorMeses++)
       {investimento = investimento * 1.02}
       saldo = saldo + investimento
       extrato = extrato + "INVESTIMENTO---------R$" + investimento +"\n"
       escreva("O rendimento foi de: R$", investimento, " seu saldo toal agora é: R$", saldo,"\n")
       escreva("Aperte ENTER para continuar: ")
       leia(repeticao)
       limpa()
      pare
     }
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */