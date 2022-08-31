Algoritmo "Condo-Link"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Edson Shinki Kaneshima 
// Autor(a)    : Caio, Pedro Ferreira, João Borsoi e Renata
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
   // Seção de Declarações das variáveis
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
   para r <- 0 até i -1 passo 1 faça
      escreval ("----------------------------------------------------------------")
      escreval ("Morador: ", vm.m[r])
      escreval ("Apartamento:", Vm.ap[r])
      Escreval ("Número de moradores:", vm.nm[r])
      escreval ("----------------------------------------------------------------")
   fimpara
fimprocedimento

funcao f_v (fap : inteiro) : logico
var
   vai : logico
inicio
   vai <- falso
   para r <- 0 ate i - 1 passo 1 faca
      se fap = vm.ap[r] então
         vai <- verdadeiro
         interrompa
      fimse
   fimpara
   retorne vai
fimfuncao

Procedimento p_rs
var
inicio
   escreval ("Para qual dia você deseja reservar")
   escreval ("1-Domingo")
   escreval ("2-Segunda-Feira")
   escreval ("3-Terça-Feira")
   escreval ("4-Quarta-Feira")
   escreval ("5-Quinta-Feira")
   escreval ("6-Sexta-Feira")
   escreval ("7-Sábado")
   leia (rr)
   escreval ("Qual o seu apartamento:")
   leia(AP)
   para r <- 0 até i -1 passo 1 faca
      f <- falso
      se ((ap = vm.ap[r]) e (vs.st[rr] = "livre")) então
         vs.st[rr] <- "Reservado"
         vs.m[rr] <- vm.m[r]
         f <- verdadeiro
         interrompa
      fimse
   fimpara
   se f = verdadeiro então
   escreval ("Reserva Confirmada")
   senão
   escreval ("Dia já reservado ou Apartamento inválido")
   fimse
fimprocedimento

Procedimento p_rc
var
inicio
   escreval ("Para qual dia você deseja reservar")
   escreval ("1-Domingo")
   escreval ("2-Segunda-Feira")
   escreval ("3-Terça-Feira")
   escreval ("4-Quarta-Feira")
   escreval ("5-Quinta-Feira")
   escreval ("6-Sexta-Feira")
   escreval ("7-Sábado")
   leia (rr)
   escreval ("Qual o seu apartamento:")
   leia(AP)
   para r <- 0 até i -1 passo 1 faca
     f <- falso
      se ((ap = vm.ap[r]) e (vs.st[rr] = "livre")) então
         vc.st[rr] <- "Reservado"
         vc.m[rr] <- vm.m[r]
         f <- verdadeiro
         interrompa
      fimse
   fimpara
   se f = verdadeiro então
   escreval ("Reserva Confirmada")
   senão
   escreval ("Dia já reservado ou Apartamento inválido")
   fimse
fimprocedimento

procedimento P_mr
var
inicio
   escreval ("----------------------------------------------------------------")
   escreval ("Salão de Festa")
   escreval ("Domingo: ", vs.st[1],"/ ", vs.m[1])
   escreval ("Segunda-Feira: ", vs.st[2],"/ ", vs.m[2])
   escreval ("Terça-Feira: ", vs.st[3],"/", vs.m[3])
   escreval ("Quarta-Feira: ", vs.st[4],"/ ", vs.m[4])
   escreval ("Quinta-Feira: ", vs.st[5],"/ ", vs.m[5])
   escreval ("Sexta-Feira: ", vs.st[6],"/ ", vs.m[6])
   escreval ("Sábado: ", vs.st[7],"/ ", vs.m[7])
   escreval ("----------------------------------------------------------------")
   escreval ("Churasqueira")
   escreval ("Domingo: ", vc.st[1],"/ ", vc.m[1])
   escreval ("Segunda-Feira: ", vc.st[2],"/ ", vc.m[2])
   escreval ("Terça-Feira: ", vc.st[3],"/ ", vc.m[3])
   escreval ("Quarta-Feira: ", vc.st[4],"/ ", vc.m[4])
   escreval ("Quinta-Feira: ", vc.st[5],"/ ", vc.m[5])
   escreval ("Sexta-Feira: ", vc.st[6],"/ ", vc.m[6])
   escreval ("Sábado: ", vc.st[7],"/ ", vc.m[7])
   escreval ("----------------------------------------------------------------")
fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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
         escreval ("Qual o número do apartamento?")
         leia (ap)
         escreval ("Quantos moradores moram nesse apartamento")
         leia (nm)
         se f_v(ap) = falso então
            p_rm (ap,nm, m)
         senão
            escreval ("APARTAMENTO JÁ CADASTRADO")
         fimse
      caso 2
         escreval ("1-Salão de Festa")
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