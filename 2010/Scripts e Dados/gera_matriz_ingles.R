rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)

dados <-read.csv("respostas_ingles.csv")
dados$X<-NULL

contadorAux <- 0

respostas_LC <- matrix(0, nrow=nrow(dados), ncol = 5)
#dentro do vet respostas vai ter que ter as 50 resp
vet_respostas <- c("5","5","5","5","5")
gabarito_ingles <- c("E","A","D","C","D")

for(i in 1:nrow(dados)){
  contadorAux <- contadorAux + 1
  vet_respostas <- dados[i,1:5]

  if(dados[i,6]==95 || 111){ #prova AZUL
    if(gabarito_ingles[1]==vet_respostas[1]){
      respostas_LC[contadorAux,1]<-1
    }
    
    if(gabarito_ingles[2]==vet_respostas[2]){
      respostas_LC[contadorAux,2]<-1
    } 
    
    if(gabarito_ingles[3]==vet_respostas[3]){
      respostas_LC[contadorAux,3]<-1
    } 
    
    if(gabarito_ingles[4]==vet_respostas[4]){
      respostas_LC[contadorAux,4]<-1
    } 
    
    if(gabarito_ingles[5]==vet_respostas[5]){
      respostas_LC[contadorAux,5]<-1
    } 
  }
    
  if(dados[i,6]== 93 || 109){ #prova amarela
      if(gabarito_ingles[1]==vet_respostas[3]){
        respostas_LC[contadorAux,1]<-1
      }
      
      if(gabarito_ingles[2]==vet_respostas[1]){
        respostas_LC[contadorAux,2]<-1
      } 
      
      if(gabarito_ingles[3]==vet_respostas[2]){
        respostas_LC[contadorAux,3]<-1
      } 
      
      if(gabarito_ingles[4]==vet_respostas[4]){
        respostas_LC[contadorAux,4]<-1
      } 
      
      if(gabarito_ingles[5]==vet_respostas[5]){
        respostas_LC[contadorAux,5]<-1
      }
    }
    
  if(dados[i,6]==94 || 110){ #prova cinza
      if(gabarito_ingles[1]==vet_respostas[3]){
        respostas_LC[contadorAux,1]<-1
      }
      
      if(gabarito_ingles[2]==vet_respostas[2]){
        respostas_LC[contadorAux,2]<-1
      } 
      
      if(gabarito_ingles[3]==vet_respostas[1]){
        respostas_LC[contadorAux,3]<-1
      } 
      
      if(gabarito_ingles[4]==vet_respostas[5]){
        respostas_LC[contadorAux,4]<-1
      } 
      
      if(gabarito_ingles[5]==vet_respostas[4]){
        respostas_LC[contadorAux,5]<-1
      }
    }
    
  if(dados[i,6]==96 || 112){ #prova rosa
      if(gabarito_ingles[1]==vet_respostas[1]){
        respostas_LC[contadorAux,1]<-1
      }
      
      if(gabarito_ingles[2]==vet_respostas[3]){
        respostas_LC[contadorAux,2]<-1
      } 
      
      if(gabarito_ingles[3]==vet_respostas[2]){
        respostas_LC[contadorAux,3]<-1
      } 
      
      if(gabarito_ingles[4]==vet_respostas[5]){
        respostas_LC[contadorAux,4]<-1
      } 
      
      if(gabarito_ingles[5]==vet_respostas[4]){
        respostas_LC[contadorAux,5]<-1
      }
    }
}

write.csv(respostas_LC, file = "respostas_zeros_e_uns_INGLES.csv")
