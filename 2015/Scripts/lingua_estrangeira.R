dados <-read.csv(file="amostra_enem2015_50k.csv", sep =",")
dados$X <- NULL
ingles <- c("X","X","X","X","X")
espanhol <- c("X","X","X","X","X")
codigo_prova <- 0
codigo_prova_ingles <- 0
codigo_prova_espanhol <- 0
vet_respostas <- c("X","X","X","X","X","X","X","X","X","X")
for(i in 1:nrow(dados)){
  resposta<-dados[i,11]
  #0 significa que o participante fez a prova de inglês/1 fez espanhol
  if(dados[i,13] == 0){
    for(k in 1:5){
      vet_respostas[k]<-str_sub(resposta,k,k)
    }
    ingles <- rbind(ingles,vet_respostas[1:5])
    codigo_prova_ingles <- rbind(codigo_prova_ingles,dados[i,7])
  }else{
    for(k in 1:10){
      vet_respostas[k]<-str_sub(resposta,k,k)
    }
    espanhol <- rbind(espanhol,vet_respostas[6:10])
    codigo_prova_espanhol <- rbind(codigo_prova_espanhol,dados[i,7])
  }
}

respostas_ingles <- cbind(ingles, codigo_prova_ingles)
respostas_espanhol <- cbind(espanhol, codigo_prova_espanhol)

write.csv(respostas_ingles, file="respostas_ingles.csv")
write.csv(respostas_espanhol, file="respostas_espanhol.csv")
