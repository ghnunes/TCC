rm(list=ls())
library(stringr)

dados <-read.csv(file="amostra_enem2011_50k.csv", sep =",")
dados$X <- NULL
ingles <- c("X","X","X","X","X")
espanhol <- c("X","X","X","X","X")
respostas_candidato <- c(180)
codigo_prova_ingles <- 0
codigo_prova_espanhol <- 0
vet_respostas <- c("X","X","X","X","X")
for(i in 1:nrow(dados)){
  resposta<-dados[i,2] 
  #0 significa que o participante fez a prova de inglês/1 fez espanhol
  for(k in 1:180){
    respostas_candidato[k]<-str_sub(resposta,k,k)
  }
  
  if(dados[i,7] == 0){
 
    for(k in 1:5){
      vet_respostas[k]<-respostas_candidato[k+90]
    }
    
    ingles <- rbind(ingles,vet_respostas[1:5])
    codigo_prova_ingles <- rbind(codigo_prova_ingles,data.frame(dados[i,5]))
    
  }else{
    for(k in 1:5){
      vet_respostas[k]<-respostas_candidato[k+90]
    }
    espanhol <- rbind(espanhol,vet_respostas[1:5])
    codigo_prova_espanhol <- rbind(codigo_prova_espanhol,data.frame(dados[i,5]))
  }
  print(i)
   
}


respostas_ingles <- cbind(ingles, codigo_prova_ingles)
respostas_espanhol <- cbind(espanhol, codigo_prova_espanhol)




write.csv(respostas_ingles, file="respostas_ingles.csv")
write.csv(respostas_espanhol, file="respostas_espanhol.csv")
