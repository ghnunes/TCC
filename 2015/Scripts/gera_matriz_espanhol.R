rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)

dados <-read.csv("respostas_espanhol.csv")
dados$X<-NULL

contadorAux <- 0

respostas_LC <- matrix(0, nrow=nrow(dados), ncol = 5)
#dentro do vet respostas vai ter que ter as 50 resp
vet_respostas <- c("5","5","5","5","5")
gabarito_espanhol <- c("D","C","B","D","A")

for(i in 1:nrow(dados)){
  contadorAux <- contadorAux + 1
  vet_respostas <- dados[i,1:5]
  
  if(dados[i,6]==241){ #prova azul
    if(gabarito_espanhol[1]==vet_respostas[1]){
      respostas_LC[contadorAux,1]<-1
    }
    
    if(gabarito_espanhol[2]==vet_respostas[2]){
      respostas_LC[contadorAux,2]<-1
    } 
    
    if(gabarito_espanhol[3]==vet_respostas[3]){
      respostas_LC[contadorAux,3]<-1
    } 
    
    if(gabarito_espanhol[4]==vet_respostas[4]){
      respostas_LC[contadorAux,4]<-1
    } 
    
    if(gabarito_espanhol[5]==vet_respostas[5]){
      respostas_LC[contadorAux,5]<-1
    } 
  }
  
  if(dados[i,6]==240){ #prova cinza
    if(gabarito_espanhol[1]==vet_respostas[5]){
      respostas_LC[contadorAux,1]<-1
    }
    
    if(gabarito_espanhol[2]==vet_respostas[3]){
      respostas_LC[contadorAux,2]<-1
    } 
    
    if(gabarito_espanhol[3]==vet_respostas[1]){
      respostas_LC[contadorAux,3]<-1
    } 
    
    if(gabarito_espanhol[4]==vet_respostas[4]){
      respostas_LC[contadorAux,4]<-1
    } 
    
    if(gabarito_espanhol[5]==vet_respostas[2]){
      respostas_LC[contadorAux,5]<-1
    }
  }
  
  if(dados[i,6]==239){ #prova amarela
    if(gabarito_espanhol[1]==vet_respostas[3]){
      respostas_LC[contadorAux,1]<-1
    }
    
    if(gabarito_espanhol[2]==vet_respostas[2]){
      respostas_LC[contadorAux,2]<-1
    } 
    
    if(gabarito_espanhol[3]==vet_respostas[4]){
      respostas_LC[contadorAux,3]<-1
    } 
    
    if(gabarito_espanhol[4]==vet_respostas[1]){
      respostas_LC[contadorAux,4]<-1
    } 
    
    if(gabarito_espanhol[5]==vet_respostas[5]){
      respostas_LC[contadorAux,5]<-1
    }
  }
  
  if(dados[i,6]==242){ #prova rosa
    if(gabarito_espanhol[1]==vet_respostas[5]){
      respostas_LC[contadorAux,1]<-1
    }
    
    if(gabarito_espanhol[2]==vet_respostas[4]){
      respostas_LC[contadorAux,2]<-1
    } 
    
    if(gabarito_espanhol[3]==vet_respostas[1]){
      respostas_LC[contadorAux,3]<-1
    } 
    
    if(gabarito_espanhol[4]==vet_respostas[2]){
      respostas_LC[contadorAux,4]<-1
    } 
    
    if(gabarito_espanhol[5]==vet_respostas[3]){
      respostas_LC[contadorAux,5]<-1
    }
  }
  #print(dados[i,6])
}

write.csv(respostas_LC, file = "respostas_zeros_e_uns_ESPANHOL.csv")
