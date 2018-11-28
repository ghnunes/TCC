rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
vet_respostas <- c(0,0,0,0,0,0)
vet_respostas2 <- c(0,0,0,0,0,0)


dados <- read.csv.ffdf(file='DADOS_ENEM_2009.csv', header=T, sep=';', VERBOSE=T, next.rows=500000, colClasses=NA)
dados$X1000039779602009.22F3113404CARATINGA
teste<-dados[1,3]
teste2<-dados[4,2]
for(k in 1:10){
  vet_respostas[k]<-str_sub(teste,k,k)
}

if(vet_respostas2[7] == "1"){
  print("oi")
}
cod_ch = paste(vet_respostas[1],vet_respostas[2])
write.csv(dados,file="dados_2012.csv")

is.na(vet_respostas[10])



