Algoritmo "Condo-Link"
// Disciplina: [Linguagem e L�gica de Programa��o]
// Professor: Edson Shinki Kaneshima
// Descri��o: Funcionalidades do Algoritmo: Denunciar morador e Fazer Reservas para espa�os comuns em um condom�nio de pr�dios.
//O usu�rio possui 2 op��es = Denunciar morador e Fazer reserva
//Dentro da op��o "Denunciar Morador", o usu�rio pode escolher entre 5 op��es de reclama��o "pronta" ou escrever com as pr�prias palavras
//Dentro da op��o "Fazer reserva", o usu�rio pode escolher entre 3 op��es de espa�os comuns do condom�nio
// Autor(a): Caio Sumizawa, Jo�o Borsoi, Pedro Ferreira e Renata Gransoti
// Data: 10/06/2022
Var
reclamacao, ap, reserva, fazer: inteiro
outro, horario, dia, mes: caractere

Inicio
enquanto (fazer <1) ou (fazer >2) faca
   escreval ("O que deseja fazer:")
   escreval ("1 : Denunciar morador")
   escreval ("2 : Fazer reserva")
   leia (fazer)
   escolha (fazer)
   caso (1)
      escreva ("N�mero do apartamento: ")
      leia (ap)
      enquanto (reclamacao<1) ou (reclamacao>6) faca
         escreval ("1 : Barulho depois das 22:00h")
         escreval ("2 : Danos a �rea comum" )
         escreval ("3 : Modifica��o da fachada")
         escreval ("4 : Liberar entrada para estranhos")
         escreval ("5 : Ocupar vaga de garagem errada")
         escreval ("6 : Outro")
         leia (reclamacao)
         escolha (reclamacao)
         caso (1)
            escreval ("O caso ser� analisado e o apartamento", ap, " poder� ser multado em R$200")
         caso (2)
            escreval ("O caso ser� analisado e o apartamento", ap, " ser� multado em R$350")
         caso (3)
            escreval ("O caso ser� analisado, o apartamento", ap, " ser� notificado, e ter� que mudar a fachada em at� 2 semanas")
         caso (4)
            escreval ("O caso ser� analisado e o apartamento", ap, " ser� multado em R$100")
         caso (5)
            escreval ("O caso ser� analisado e o apartamento", ap, " ser� notificado")
         caso (6)
            escreval ("Escreva sua reclama��o:")
            Leia (outro)
            escreval ("Sua reclama��o do apartamento", ap, " foi registrada e o caso ser� analisado")
         outrocaso
            escreval ("Escolha entre as 6 op��es.")
         fimescolha
      fimenquanto
   caso (2)
      escreval("Para qual m�s?")
      leia(mes)
      escreval("Para qual dia?")
      leia(dia)
      escreval ("Para qual hor�rio?")
      leia (horario)
      enquanto (reserva<1) ou (reserva>3) faca
         escreval ("O que deseja reservar?")
         escreval ("1 : Sala de jogos")
         escreval ("2 : Sal�o de festa")
         escreval ("3 : Churrasqueira")
         leia (reserva)
         escolha (reserva)
         caso (1)
            escreval ("Sua reserva para a data ",dia,"/",mes," �s ", (horario), "h, da sala de jogos, foi confirmada")
         caso (2)
            escreval ("Sua reserva para a data ",dia,"/",mes," �s ", (horario), "h, do sal�o de festa, foi confirmada")
         caso (3)
            escreval ("Sua reserva para a data ",dia,"/",mes," �s ", (horario), "h, da churrasqueira, foi confirmada")
         outrocaso
            escreval("Escolha a op��o 1,2 ou 3")
         fimescolha
      fimenquanto
   outrocaso
      escreval ("Escolha a op��o 1 ou 2")
   fimescolha
fimenquanto
Fimalgoritmo
