Algoritmo "Condo-Link"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor: Edson Shinki Kaneshima
// Descrição: Funcionalidades do Algoritmo: Denunciar morador e Fazer Reservas para espaços comuns em um condomínio de prédios.
//O usuário possui 2 opções = Denunciar morador e Fazer reserva
//Dentro da opção "Denunciar Morador", o usuário pode escolher entre 5 opções de reclamação "pronta" ou escrever com as próprias palavras
//Dentro da opção "Fazer reserva", o usuário pode escolher entre 3 opções de espaços comuns do condomínio
// Autor(a): Caio Sumizawa, João Borsoi, Pedro Ferreira e Renata Gransoti
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
      escreva ("Número do apartamento: ")
      leia (ap)
      enquanto (reclamacao<1) ou (reclamacao>6) faca
         escreval ("1 : Barulho depois das 22:00h")
         escreval ("2 : Danos a área comum" )
         escreval ("3 : Modificação da fachada")
         escreval ("4 : Liberar entrada para estranhos")
         escreval ("5 : Ocupar vaga de garagem errada")
         escreval ("6 : Outro")
         leia (reclamacao)
         escolha (reclamacao)
         caso (1)
            escreval ("O caso será analisado e o apartamento", ap, " poderá ser multado em R$200")
         caso (2)
            escreval ("O caso será analisado e o apartamento", ap, " será multado em R$350")
         caso (3)
            escreval ("O caso será analisado, o apartamento", ap, " será notificado, e terá que mudar a fachada em até 2 semanas")
         caso (4)
            escreval ("O caso será analisado e o apartamento", ap, " será multado em R$100")
         caso (5)
            escreval ("O caso será analisado e o apartamento", ap, " será notificado")
         caso (6)
            escreval ("Escreva sua reclamação:")
            Leia (outro)
            escreval ("Sua reclamação do apartamento", ap, " foi registrada e o caso será analisado")
         outrocaso
            escreval ("Escolha entre as 6 opções.")
         fimescolha
      fimenquanto
   caso (2)
      escreval("Para qual mês?")
      leia(mes)
      escreval("Para qual dia?")
      leia(dia)
      escreval ("Para qual horário?")
      leia (horario)
      enquanto (reserva<1) ou (reserva>3) faca
         escreval ("O que deseja reservar?")
         escreval ("1 : Sala de jogos")
         escreval ("2 : Salão de festa")
         escreval ("3 : Churrasqueira")
         leia (reserva)
         escolha (reserva)
         caso (1)
            escreval ("Sua reserva para a data ",dia,"/",mes," às ", (horario), "h, da sala de jogos, foi confirmada")
         caso (2)
            escreval ("Sua reserva para a data ",dia,"/",mes," às ", (horario), "h, do salão de festa, foi confirmada")
         caso (3)
            escreval ("Sua reserva para a data ",dia,"/",mes," às ", (horario), "h, da churrasqueira, foi confirmada")
         outrocaso
            escreval("Escolha a opção 1,2 ou 3")
         fimescolha
      fimenquanto
   outrocaso
      escreval ("Escolha a opção 1 ou 2")
   fimescolha
fimenquanto
Fimalgoritmo
