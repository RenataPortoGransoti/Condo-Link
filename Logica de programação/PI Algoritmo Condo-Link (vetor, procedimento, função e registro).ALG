Algoritmo "Condo-Link"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Edson Shinki Kaneshima 
// Autor(a)    : Caio, Pedro Ferreira, Jo�o Borsoi e Renata
// Data atual  : 22/08/2022
Tipo
   j = registro
      M : caracter
      ap,nm : inteiro
   fimregistro
   S = registro
      m, st : caracter
   fimregistro
   c = registro
      m, st : caracter
   fimregistro
Var
   // Se��o de Declara��es das vari�veis
   vm : vetor [0..9] de j
   vs : vetor [1..7] de s
   vc : vetor [1..7] de c
   i,ap,o,nm,r,oo,rr : inteiro
   m : caracter
   f : logico

procedimento P_rm (pap, pnm : inteiro; pm : Caracter)
var
inicio
   vm.m[i] <- pm
   vm.ap[i] <- pap
   vm.nm[i] <- pnm
   i <- i + 1
fimprocedimento

Procedimento p_mm
var
inicio
   para r <- 0 at� i -1 passo 1 fa�a
      escreval ("----------------------------------------------------------------")
      escreval ("Morador: ", vm.m[r])
      escreval ("Apartamento:", Vm.ap[r])
      Escreval ("N�mero de moradores:", vm.nm[r])
      escreval ("----------------------------------------------------------------")
   fimpara
fimprocedimento

funcao f_v (fap : inteiro) : logico
var
   vai : logico
inicio
   vai <- falso
   para r <- 0 ate i - 1 passo 1 faca
      se fap = vm.ap[r] ent�o
         vai <- verdadeiro
         interrompa
      fimse
   fimpara
   retorne vai
fimfuncao

Procedimento p_rs
var
inicio
   escreval ("Para qual dia voc� deseja reservar")
   escreval ("1-Domingo")
   escreval ("2-Segunda-Feira")
   escreval ("3-Ter�a-Feira")
   escreval ("4-Quarta-Feira")
   escreval ("5-Quinta-Feira")
   escreval ("6-Sexta-Feira")
   escreval ("7-S�bado")
   leia (rr)
   escreval ("Qual o seu apartamento:")
   leia(AP)
   para r <- 0 at� i -1 passo 1 faca
      f <- falso
      se ((ap = vm.ap[r]) e (vs.st[rr] = "livre")) ent�o
         vs.st[rr] <- "Reservado"
         vs.m[rr] <- vm.m[r]
         f <- verdadeiro
         interrompa
      fimse
   fimpara
   se f = verdadeiro ent�o
   escreval ("Reserva Confirmada")
   sen�o
   escreval ("Dia j� reservado ou Apartamento inv�lido")
   fimse
fimprocedimento

Procedimento p_rc
var
inicio
   escreval ("Para qual dia voc� deseja reservar")
   escreval ("1-Domingo")
   escreval ("2-Segunda-Feira")
   escreval ("3-Ter�a-Feira")
   escreval ("4-Quarta-Feira")
   escreval ("5-Quinta-Feira")
   escreval ("6-Sexta-Feira")
   escreval ("7-S�bado")
   leia (rr)
   escreval ("Qual o seu apartamento:")
   leia(AP)
   para r <- 0 at� i -1 passo 1 faca
     f <- falso
      se ((ap = vm.ap[r]) e (vs.st[rr] = "livre")) ent�o
         vc.st[rr] <- "Reservado"
         vc.m[rr] <- vm.m[r]
         f <- verdadeiro
         interrompa
      fimse
   fimpara
   se f = verdadeiro ent�o
   escreval ("Reserva Confirmada")
   sen�o
   escreval ("Dia j� reservado ou Apartamento inv�lido")
   fimse
fimprocedimento

procedimento P_mr
var
inicio
   escreval ("----------------------------------------------------------------")
   escreval ("Sal�o de Festa")
   escreval ("Domingo: ", vs.st[1],"/ ", vs.m[1])
   escreval ("Segunda-Feira: ", vs.st[2],"/ ", vs.m[2])
   escreval ("Ter�a-Feira: ", vs.st[3],"/", vs.m[3])
   escreval ("Quarta-Feira: ", vs.st[4],"/ ", vs.m[4])
   escreval ("Quinta-Feira: ", vs.st[5],"/ ", vs.m[5])
   escreval ("Sexta-Feira: ", vs.st[6],"/ ", vs.m[6])
   escreval ("S�bado: ", vs.st[7],"/ ", vs.m[7])
   escreval ("----------------------------------------------------------------")
   escreval ("Churasqueira")
   escreval ("Domingo: ", vc.st[1],"/ ", vc.m[1])
   escreval ("Segunda-Feira: ", vc.st[2],"/ ", vc.m[2])
   escreval ("Ter�a-Feira: ", vc.st[3],"/ ", vc.m[3])
   escreval ("Quarta-Feira: ", vc.st[4],"/ ", vc.m[4])
   escreval ("Quinta-Feira: ", vc.st[5],"/ ", vc.m[5])
   escreval ("Sexta-Feira: ", vc.st[6],"/ ", vc.m[6])
   escreval ("S�bado: ", vc.st[7],"/ ", vc.m[7])
   escreval ("----------------------------------------------------------------")
fimprocedimento

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Para r <- 1 ate 7 passo 1 faca
      vs.st[r] <- "livre"
      vc.st[r] <- "livre"
   fimpara
   enquanto o <> 5 faca
      escreval ("1-Fazer registro de morador")
      escreval ("2-Fazer reserva")
      escrevaL ("3-Mostrar reservas")
      escreval ("4-Mostrar todos os moradores")
      escreval ("5-Finalizar")
      leia (O)
      escolha (o)
      caso 1
         Escreval ("Qual o nome do morador?")
         leia (m)
         escreval ("Qual o n�mero do apartamento?")
         leia (ap)
         escreval ("Quantos moradores moram nesse apartamento")
         leia (nm)
         se f_v(ap) = falso ent�o
            p_rm (ap,nm, m)
         sen�o
            escreval ("APARTAMENTO J� CADASTRADO")
         fimse
      caso 2
         escreval ("1-Sal�o de Festa")
         escreval ("2-Churrasqueira")
         leia (oo)
         escolha (oo)
         caso 1
            p_rs
         caso 2
            p_rc
         fimescolha
      caso 3
         p_mr
      caso 4
         p_mm
      fimescolha
   fimenquanto
Fimalgoritmo