rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)
library(progress)
dados <- read.csv.ffdf(file='amostra_enem2009_50k.csv', header=T, sep=',', VERBOSE=T, next.rows=500000, colClasses=NA)

contadorAux <-0

pb <- progress_bar$new( 
  format= "downloading [:bar] :percent eta: :eta", total = 50000, clear = FALSE, width=60
)

respostas_CN <- matrix(0, nrow=50000, ncol = 45)
gabarito_CN <- c("C","D","A","B","E","D","D","B","D","C","C","A","D","E","B","D","E","E","D","E","C","D","E","A","B","D","D","B","D","D","E","B","C","C","A","E","D","D","B","D","A","E","A","B","A")
respostas_candidato <- c(180)
vet_respostas <- c(45)
resposta <- ""
codigo_prova <- c("8")

for(i in 1:nrow(dados)){
  
  rm(resposta)
  contadorAux <- contadorAux + 1
  pb$tick()
  resposta<-dados[i,3]
  for(k in 1:180){
    respostas_candidato[k]<-str_sub(resposta,k,k)
  }
  for(k in 1:45){
    vet_respostas[k]<-respostas_candidato[k]
  }
  
  codigo<-dados[i,4]
  for(k in 1:8){
    codigo_prova[k]<-str_sub(codigo,k,k)
  }
  codigo_prova <- (codigo_prova[1:2])
  codigo_prova <- paste(codigo_prova[1],codigo_prova[2])
  
  if(codigo_prova== "4 9"){ #prova azul
    if(gabarito_CN[1]==vet_respostas[1]){
      respostas_CN[contadorAux,1]<-1
    }
    
    if(gabarito_CN[2]==vet_respostas[2]){
      respostas_CN[contadorAux,2]<-1
    }
    
    if(gabarito_CN[3]==vet_respostas[3]){
      respostas_CN[contadorAux,3]<-1
    }
    
    if(gabarito_CN[4]==vet_respostas[4]){
      respostas_CN[contadorAux,4]<-1
    }
    
    if(gabarito_CN[5]==vet_respostas[5]){
      respostas_CN[contadorAux,5]<-1
    }
    
    if(gabarito_CN[6]==vet_respostas[6]){
      respostas_CN[contadorAux,6]<-1
    }
    
    if(gabarito_CN[7]==vet_respostas[7]){
      respostas_CN[contadorAux,7]<-1
    }
    
    if(gabarito_CN[8]==vet_respostas[8]){
      respostas_CN[contadorAux,8]<-1
    }
    
    if(gabarito_CN[9]==vet_respostas[9]){
      respostas_CN[contadorAux,9]<-1
    }
    
    if(gabarito_CN[10]==vet_respostas[10]){
      respostas_CN[contadorAux,10]<-1
    }
    
    if(gabarito_CN[11]==vet_respostas[11]){
      respostas_CN[contadorAux,11]<-1
    }
    
    if(gabarito_CN[12]==vet_respostas[12]){
      respostas_CN[contadorAux,12]<-1
    }
    
    if(gabarito_CN[13]==vet_respostas[13]){
      respostas_CN[contadorAux,13]<-1
    }
    
    if(gabarito_CN[14]==vet_respostas[14]){
      respostas_CN[contadorAux,14]<-1
    }
    
    if(gabarito_CN[15]==vet_respostas[15]){
      respostas_CN[contadorAux,15]<-1
    }
    
    if(gabarito_CN[16]==vet_respostas[16]){
      respostas_CN[contadorAux,16]<-1
    }
    
    if(gabarito_CN[17]==vet_respostas[17]){
      respostas_CN[contadorAux,17]<-1
    }
    
    if(gabarito_CN[18]==vet_respostas[18]){
      respostas_CN[contadorAux,18]<-1
    }
    
    if(gabarito_CN[19]==vet_respostas[19]){
      respostas_CN[contadorAux,19]<-1
    }
    
    if(gabarito_CN[20]==vet_respostas[20]){
      respostas_CN[contadorAux,20]<-1
    }
    
    if(gabarito_CN[21]==vet_respostas[21]){
      respostas_CN[contadorAux,21]<-1
    }
    
    if(gabarito_CN[22]==vet_respostas[22]){
      respostas_CN[contadorAux,22]<-1
    }
    
    if(gabarito_CN[23]==vet_respostas[23]){
      respostas_CN[contadorAux,23]<-1
    }
    
    if(gabarito_CN[24]==vet_respostas[24]){
      respostas_CN[contadorAux,24]<-1
    }
    
    if(gabarito_CN[25]==vet_respostas[25]){
      respostas_CN[contadorAux,25]<-1
    }
    
    if(gabarito_CN[26]==vet_respostas[26]){
      respostas_CN[contadorAux,26]<-1
    }
    
    if(gabarito_CN[27]==vet_respostas[27]){
      respostas_CN[contadorAux,27]<-1
    }
    
    if(gabarito_CN[28]==vet_respostas[28]){
      respostas_CN[contadorAux,28]<-1
    }
    
    if(gabarito_CN[29]==vet_respostas[29]){
      respostas_CN[contadorAux,29]<-1
    }
    
    if(gabarito_CN[30]==vet_respostas[30]){
      respostas_CN[contadorAux,30]<-1
    }
    
    if(gabarito_CN[31]==vet_respostas[31]){
      respostas_CN[contadorAux,31]<-1
    }
    
    if(gabarito_CN[32]==vet_respostas[32]){
      respostas_CN[contadorAux,32]<-1
    }
    
    if(gabarito_CN[33]==vet_respostas[33]){
      respostas_CN[contadorAux,33]<-1
    }
    
    if(gabarito_CN[34]==vet_respostas[34]){
      respostas_CN[contadorAux,34]<-1
    }
    
    if(gabarito_CN[35]==vet_respostas[35]){
      respostas_CN[contadorAux,35]<-1
    }
    
    if(gabarito_CN[36]==vet_respostas[36]){
      respostas_CN[contadorAux,36]<-1
    }
    
    if(gabarito_CN[37]==vet_respostas[37]){
      respostas_CN[contadorAux,37]<-1
    }
    
    if(gabarito_CN[38]==vet_respostas[38]){
      respostas_CN[contadorAux,38]<-1
    }
    
    if(gabarito_CN[39]==vet_respostas[39]){
      respostas_CN[contadorAux,39]<-1
    }
    
    if(gabarito_CN[40]==vet_respostas[40]){
      respostas_CN[contadorAux,40]<-1
    }
    
    if(gabarito_CN[41]==vet_respostas[41]){
      respostas_CN[contadorAux,41]<-1
    }
    
    if(gabarito_CN[42]==vet_respostas[42]){
      respostas_CN[contadorAux,42]<-1
    }
    
    if(gabarito_CN[43]==vet_respostas[43]){
      respostas_CN[contadorAux,43]<-1
    }
    
    if(gabarito_CN[44]==vet_respostas[44]){
      respostas_CN[contadorAux,44]<-1
    }
    
    if(gabarito_CN[45]==vet_respostas[45]){
      respostas_CN[contadorAux,45]<-1
    } 
  }
  
  if(codigo_prova== "5 0"){ #prova amarelo
    if(gabarito_CN[1]==vet_respostas[1]){
      respostas_CN[contadorAux,1]<-1
    }
    
    if(gabarito_CN[2]==vet_respostas[3]){
      respostas_CN[contadorAux,2]<-1
    }
    
    if(gabarito_CN[3]==vet_respostas[2]){
      respostas_CN[contadorAux,3]<-1
    }
    
    if(gabarito_CN[4]==vet_respostas[4]){
      respostas_CN[contadorAux,4]<-1
    }
    
    if(gabarito_CN[5]==vet_respostas[5]){
      respostas_CN[contadorAux,5]<-1
    }
    
    if(gabarito_CN[6]==vet_respostas[7]){
      respostas_CN[contadorAux,6]<-1
    }
    
    if(gabarito_CN[7]==vet_respostas[6]){
      respostas_CN[contadorAux,7]<-1
    }
    
    if(gabarito_CN[8]==vet_respostas[8]){
      respostas_CN[contadorAux,8]<-1
    }
    
    if(gabarito_CN[9]==vet_respostas[9]){
      respostas_CN[contadorAux,9]<-1
    }
    
    if(gabarito_CN[10]==vet_respostas[11]){
      respostas_CN[contadorAux,10]<-1
    }
    
    if(gabarito_CN[11]==vet_respostas[10]){
      respostas_CN[contadorAux,11]<-1
    }
    
    if(gabarito_CN[12]==vet_respostas[12]){
      respostas_CN[contadorAux,12]<-1
    }
    
    if(gabarito_CN[13]==vet_respostas[13]){
      respostas_CN[contadorAux,13]<-1
    }
    
    if(gabarito_CN[14]==vet_respostas[14]){
      respostas_CN[contadorAux,14]<-1
    }
    
    if(gabarito_CN[15]==vet_respostas[15]){
      respostas_CN[contadorAux,15]<-1
    }
    
    if(gabarito_CN[16]==vet_respostas[16]){
      respostas_CN[contadorAux,16]<-1
    }
    
    if(gabarito_CN[17]==vet_respostas[18]){
      respostas_CN[contadorAux,17]<-1
    }
    
    if(gabarito_CN[18]==vet_respostas[17]){
      respostas_CN[contadorAux,18]<-1
    }
    
    if(gabarito_CN[19]==vet_respostas[19]){
      respostas_CN[contadorAux,19]<-1
    }
    
    if(gabarito_CN[20]==vet_respostas[20]){
      respostas_CN[contadorAux,20]<-1
    }
    
    if(gabarito_CN[21]==vet_respostas[22]){
      respostas_CN[contadorAux,21]<-1
    }
    
    if(gabarito_CN[22]==vet_respostas[21]){
      respostas_CN[contadorAux,22]<-1
    }
    
    if(gabarito_CN[23]==vet_respostas[23]){
      respostas_CN[contadorAux,23]<-1
    }
    
    if(gabarito_CN[24]==vet_respostas[24]){
      respostas_CN[contadorAux,24]<-1
    }
    
    if(gabarito_CN[25]==vet_respostas[26]){
      respostas_CN[contadorAux,25]<-1
    }
    
    if(gabarito_CN[26]==vet_respostas[27]){
      respostas_CN[contadorAux,26]<-1
    }
    
    if(gabarito_CN[27]==vet_respostas[25]){
      respostas_CN[contadorAux,27]<-1
    }
    
    if(gabarito_CN[28]==vet_respostas[28]){
      respostas_CN[contadorAux,28]<-1
    }
    
    if(gabarito_CN[29]==vet_respostas[29]){
      respostas_CN[contadorAux,29]<-1
    }
    
    if(gabarito_CN[30]==vet_respostas[31]){
      respostas_CN[contadorAux,30]<-1
    }
    
    if(gabarito_CN[31]==vet_respostas[32]){
      respostas_CN[contadorAux,31]<-1
    }
    
    if(gabarito_CN[32]==vet_respostas[30]){
      respostas_CN[contadorAux,32]<-1
    }
    
    if(gabarito_CN[33]==vet_respostas[33]){
      respostas_CN[contadorAux,33]<-1
    }
    
    if(gabarito_CN[34]==vet_respostas[34]){
      respostas_CN[contadorAux,34]<-1
    }
    
    if(gabarito_CN[35]==vet_respostas[35]){
      respostas_CN[contadorAux,35]<-1
    }
    
    if(gabarito_CN[36]==vet_respostas[36]){
      respostas_CN[contadorAux,36]<-1
    }
    
    if(gabarito_CN[37]==vet_respostas[37]){
      respostas_CN[contadorAux,37]<-1
    }
    
    if(gabarito_CN[38]==vet_respostas[38]){
      respostas_CN[contadorAux,38]<-1
    }
    
    if(gabarito_CN[39]==vet_respostas[39]){
      respostas_CN[contadorAux,39]<-1
    }
    
    if(gabarito_CN[40]==vet_respostas[41]){
      respostas_CN[contadorAux,40]<-1
    }
    
    if(gabarito_CN[41]==vet_respostas[40]){
      respostas_CN[contadorAux,41]<-1
    }
    
    if(gabarito_CN[42]==vet_respostas[42]){
      respostas_CN[contadorAux,42]<-1
    }
    
    if(gabarito_CN[43]==vet_respostas[43]){
      respostas_CN[contadorAux,43]<-1
    }
    
    if(gabarito_CN[44]==vet_respostas[45]){
      respostas_CN[contadorAux,44]<-1
    }
    
    if(gabarito_CN[45]==vet_respostas[44]){
      respostas_CN[contadorAux,45]<-1
    } 
  }
  
  if(codigo_prova== "5 1"){ #prova branco
    if(gabarito_CN[1]==vet_respostas[3]){
      respostas_CN[contadorAux,1]<-1
    }
    
    if(gabarito_CN[2]==vet_respostas[1]){
      respostas_CN[contadorAux,2]<-1
    }
    
    if(gabarito_CN[3]==vet_respostas[2]){
      respostas_CN[contadorAux,3]<-1
    }
    
    if(gabarito_CN[4]==vet_respostas[5]){
      respostas_CN[contadorAux,4]<-1
    }
    
    if(gabarito_CN[5]==vet_respostas[4]){
      respostas_CN[contadorAux,5]<-1
    }
    
    if(gabarito_CN[6]==vet_respostas[6]){
      respostas_CN[contadorAux,6]<-1
    }
    
    if(gabarito_CN[7]==vet_respostas[7]){
      respostas_CN[contadorAux,7]<-1
    }
    
    if(gabarito_CN[8]==vet_respostas[11]){
      respostas_CN[contadorAux,8]<-1
    }
    
    if(gabarito_CN[9]==vet_respostas[9]){
      respostas_CN[contadorAux,9]<-1
    }
    
    if(gabarito_CN[10]==vet_respostas[10]){
      respostas_CN[contadorAux,10]<-1
    }
    
    if(gabarito_CN[11]==vet_respostas[8]){
      respostas_CN[contadorAux,11]<-1
    }
    
    if(gabarito_CN[12]==vet_respostas[13]){
      respostas_CN[contadorAux,12]<-1
    }
    
    if(gabarito_CN[13]==vet_respostas[12]){
      respostas_CN[contadorAux,13]<-1
    }
    
    if(gabarito_CN[14]==vet_respostas[14]){
      respostas_CN[contadorAux,14]<-1
    }
    
    if(gabarito_CN[15]==vet_respostas[16]){
      respostas_CN[contadorAux,15]<-1
    }
    
    if(gabarito_CN[16]==vet_respostas[15]){
      respostas_CN[contadorAux,16]<-1
    }
    
    if(gabarito_CN[17]==vet_respostas[17]){
      respostas_CN[contadorAux,17]<-1
    }
    
    if(gabarito_CN[18]==vet_respostas[18]){
      respostas_CN[contadorAux,18]<-1
    }
    
    if(gabarito_CN[19]==vet_respostas[19]){
      respostas_CN[contadorAux,19]<-1
    }
    
    if(gabarito_CN[20]==vet_respostas[21]){
      respostas_CN[contadorAux,20]<-1
    }
    
    if(gabarito_CN[21]==vet_respostas[20]){
      respostas_CN[contadorAux,21]<-1
    }
    
    if(gabarito_CN[22]==vet_respostas[22]){
      respostas_CN[contadorAux,22]<-1
    }
    
    if(gabarito_CN[23]==vet_respostas[23]){
      respostas_CN[contadorAux,23]<-1
    }
    
    if(gabarito_CN[24]==vet_respostas[24]){
      respostas_CN[contadorAux,24]<-1
    }
    
    if(gabarito_CN[25]==vet_respostas[26]){
      respostas_CN[contadorAux,25]<-1
    }
    
    if(gabarito_CN[26]==vet_respostas[25]){
      respostas_CN[contadorAux,26]<-1
    }
    
    if(gabarito_CN[27]==vet_respostas[27]){
      respostas_CN[contadorAux,27]<-1
    }
    
    if(gabarito_CN[28]==vet_respostas[28]){
      respostas_CN[contadorAux,28]<-1
    }
    
    if(gabarito_CN[29]==vet_respostas[29]){
      respostas_CN[contadorAux,29]<-1
    }
    
    if(gabarito_CN[30]==vet_respostas[31]){
      respostas_CN[contadorAux,30]<-1
    }
    
    if(gabarito_CN[31]==vet_respostas[30]){
      respostas_CN[contadorAux,31]<-1
    }
    
    if(gabarito_CN[32]==vet_respostas[32]){
      respostas_CN[contadorAux,32]<-1
    }
    
    if(gabarito_CN[33]==vet_respostas[33]){
      respostas_CN[contadorAux,33]<-1
    }
    
    if(gabarito_CN[34]==vet_respostas[34]){
      respostas_CN[contadorAux,34]<-1
    }
    
    if(gabarito_CN[35]==vet_respostas[36]){
      respostas_CN[contadorAux,35]<-1
    }
    
    if(gabarito_CN[36]==vet_respostas[35]){
      respostas_CN[contadorAux,36]<-1
    }
    
    if(gabarito_CN[37]==vet_respostas[37]){
      respostas_CN[contadorAux,37]<-1
    }
    
    if(gabarito_CN[38]==vet_respostas[38]){
      respostas_CN[contadorAux,38]<-1
    }
    
    if(gabarito_CN[39]==vet_respostas[39]){
      respostas_CN[contadorAux,39]<-1
    }
    
    if(gabarito_CN[40]==vet_respostas[40]){
      respostas_CN[contadorAux,40]<-1
    }
    
    if(gabarito_CN[41]==vet_respostas[41]){
      respostas_CN[contadorAux,41]<-1
    }
    
    if(gabarito_CN[42]==vet_respostas[43]){
      respostas_CN[contadorAux,42]<-1
    }
    
    if(gabarito_CN[43]==vet_respostas[42]){
      respostas_CN[contadorAux,43]<-1
    }
    
    if(gabarito_CN[44]==vet_respostas[44]){
      respostas_CN[contadorAux,44]<-1
    }
    
    if(gabarito_CN[45]==vet_respostas[45]){
      respostas_CN[contadorAux,45]<-1
    } 
  }
  
  if(codigo_prova== "5 2"){ #prova rosa
    if(gabarito_CN[1]==vet_respostas[5]){
      respostas_CN[contadorAux,1]<-1
    }
    
    if(gabarito_CN[2]==vet_respostas[7]){
      respostas_CN[contadorAux,2]<-1
    }
    
    if(gabarito_CN[3]==vet_respostas[6]){
      respostas_CN[contadorAux,3]<-1
    }
    
    if(gabarito_CN[4]==vet_respostas[1]){
      respostas_CN[contadorAux,4]<-1
    }
    
    if(gabarito_CN[5]==vet_respostas[2]){
      respostas_CN[contadorAux,5]<-1
    }
    
    if(gabarito_CN[6]==vet_respostas[4]){
      respostas_CN[contadorAux,6]<-1
    }
    
    if(gabarito_CN[7]==vet_respostas[3]){
      respostas_CN[contadorAux,7]<-1
    }
    
    if(gabarito_CN[8]==vet_respostas[8]){
      respostas_CN[contadorAux,8]<-1
    }
    
    if(gabarito_CN[9]==vet_respostas[9]){
      respostas_CN[contadorAux,9]<-1
    }
    
    if(gabarito_CN[10]==vet_respostas[10]){
      respostas_CN[contadorAux,10]<-1
    }
    
    if(gabarito_CN[11]==vet_respostas[11]){
      respostas_CN[contadorAux,11]<-1
    }
    
    if(gabarito_CN[12]==vet_respostas[12]){
      respostas_CN[contadorAux,12]<-1
    }
    
    if(gabarito_CN[13]==vet_respostas[13]){
      respostas_CN[contadorAux,13]<-1
    }
    
    if(gabarito_CN[14]==vet_respostas[14]){
      respostas_CN[contadorAux,14]<-1
    }
    
    if(gabarito_CN[15]==vet_respostas[16]){
      respostas_CN[contadorAux,15]<-1
    }
    
    if(gabarito_CN[16]==vet_respostas[15]){
      respostas_CN[contadorAux,16]<-1
    }
    
    if(gabarito_CN[17]==vet_respostas[17]){
      respostas_CN[contadorAux,17]<-1
    }
    
    if(gabarito_CN[18]==vet_respostas[18]){
      respostas_CN[contadorAux,18]<-1
    }
    
    if(gabarito_CN[19]==vet_respostas[19]){
      respostas_CN[contadorAux,19]<-1
    }
    
    if(gabarito_CN[20]==vet_respostas[20]){
      respostas_CN[contadorAux,20]<-1
    }
    
    if(gabarito_CN[21]==vet_respostas[22]){
      respostas_CN[contadorAux,21]<-1
    }
    
    if(gabarito_CN[22]==vet_respostas[21]){
      respostas_CN[contadorAux,22]<-1
    }
    
    if(gabarito_CN[23]==vet_respostas[23]){
      respostas_CN[contadorAux,23]<-1
    }
    
    if(gabarito_CN[24]==vet_respostas[24]){
      respostas_CN[contadorAux,24]<-1
    }
    
    if(gabarito_CN[25]==vet_respostas[26]){
      respostas_CN[contadorAux,25]<-1
    }
    
    if(gabarito_CN[26]==vet_respostas[27]){
      respostas_CN[contadorAux,26]<-1
    }
    
    if(gabarito_CN[27]==vet_respostas[28]){
      respostas_CN[contadorAux,27]<-1
    }
    
    if(gabarito_CN[28]==vet_respostas[25]){
      respostas_CN[contadorAux,28]<-1
    }
    
    if(gabarito_CN[29]==vet_respostas[29]){
      respostas_CN[contadorAux,29]<-1
    }
    
    if(gabarito_CN[30]==vet_respostas[31]){
      respostas_CN[contadorAux,30]<-1
    }
    
    if(gabarito_CN[31]==vet_respostas[32]){
      respostas_CN[contadorAux,31]<-1
    }
    
    if(gabarito_CN[32]==vet_respostas[30]){
      respostas_CN[contadorAux,32]<-1
    }
    
    if(gabarito_CN[33]==vet_respostas[33]){
      respostas_CN[contadorAux,33]<-1
    }
    
    if(gabarito_CN[34]==vet_respostas[34]){
      respostas_CN[contadorAux,34]<-1
    }
    
    if(gabarito_CN[35]==vet_respostas[35]){
      respostas_CN[contadorAux,35]<-1
    }
    
    if(gabarito_CN[36]==vet_respostas[36]){
      respostas_CN[contadorAux,36]<-1
    }
    
    if(gabarito_CN[37]==vet_respostas[37]){
      respostas_CN[contadorAux,37]<-1
    }
    
    if(gabarito_CN[38]==vet_respostas[41]){
      respostas_CN[contadorAux,38]<-1
    }
    
    if(gabarito_CN[39]==vet_respostas[39]){
      respostas_CN[contadorAux,39]<-1
    }
    
    if(gabarito_CN[40]==vet_respostas[38]){
      respostas_CN[contadorAux,40]<-1
    }
    
    if(gabarito_CN[41]==vet_respostas[40]){
      respostas_CN[contadorAux,41]<-1
    }
    
    if(gabarito_CN[42]==vet_respostas[43]){
      respostas_CN[contadorAux,42]<-1
    }
    
    if(gabarito_CN[43]==vet_respostas[42]){
      respostas_CN[contadorAux,43]<-1
    }
    
    if(gabarito_CN[44]==vet_respostas[44]){
      respostas_CN[contadorAux,44]<-1
    }
    
    if(gabarito_CN[45]==vet_respostas[45]){
      respostas_CN[contadorAux,45]<-1
    } 
  }
  
  resposta <- NULL
}


write.csv(respostas_CN, file = "respostas_zeros_e_uns50k_CN.csv")





