rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)
dados <- read.csv.ffdf(file='amostra_enem2011_50k.csv', header=T, sep=',', VERBOSE=T, next.rows=500000, colClasses=NA)

contadorAux <-0


respostas_CH <- matrix(0, nrow=50000, ncol = 45)
gabarito_CH <- c("E","D","E","B","C","E","A","E","D","B","D","A","A","C","A","C","E","C","D","B","B","C","A","C","E","D","C","D","C","B","A","E","A","D","A","D","B","B","D","D","E","A","A","B","A")
respostas_candidato <- c(180)
vet_respostas <- c(45)
resposta <- ""

  for(i in 1:nrow(dados)){
    
      rm(resposta)
      contadorAux <- contadorAux + 1
      print(contadorAux)
      resposta<-dados[i,3]
      for(k in 1:180){
        respostas_candidato[k]<-str_sub(resposta,k,k)
      }
      for(k in 1:45){
        vet_respostas[k]<-respostas_candidato[k+45]
      }
      

      if(dados[i,5]==117){ #prova azul
        if(gabarito_CH[1]==vet_respostas[1]){
          respostas_CH[contadorAux,1]<-1
        }
       
        if(gabarito_CH[2]==vet_respostas[2]){
          respostas_CH[contadorAux,2]<-1
        }
       
        if(gabarito_CH[3]==vet_respostas[3]){
          respostas_CH[contadorAux,3]<-1
        }
        
        if(gabarito_CH[4]==vet_respostas[4]){
          respostas_CH[contadorAux,4]<-1
        }
        
        if(gabarito_CH[5]==vet_respostas[5]){
          respostas_CH[contadorAux,5]<-1
        }
        
        if(gabarito_CH[6]==vet_respostas[6]){
          respostas_CH[contadorAux,6]<-1
        }
        
        if(gabarito_CH[7]==vet_respostas[7]){
          respostas_CH[contadorAux,7]<-1
        }
        
        if(gabarito_CH[8]==vet_respostas[8]){
          respostas_CH[contadorAux,8]<-1
        }
        
        if(gabarito_CH[9]==vet_respostas[9]){
          respostas_CH[contadorAux,9]<-1
        }
        
        if(gabarito_CH[10]==vet_respostas[10]){
          respostas_CH[contadorAux,10]<-1
        }
        
        if(gabarito_CH[11]==vet_respostas[11]){
          respostas_CH[contadorAux,11]<-1
        }
        
        if(gabarito_CH[12]==vet_respostas[12]){
          respostas_CH[contadorAux,12]<-1
        }
        
        if(gabarito_CH[13]==vet_respostas[13]){
          respostas_CH[contadorAux,13]<-1
        }
        
        if(gabarito_CH[14]==vet_respostas[14]){
          respostas_CH[contadorAux,14]<-1
        }
        
        if(gabarito_CH[15]==vet_respostas[15]){
          respostas_CH[contadorAux,15]<-1
        }
        
        if(gabarito_CH[16]==vet_respostas[16]){
          respostas_CH[contadorAux,16]<-1
        }
        
        if(gabarito_CH[17]==vet_respostas[17]){
          respostas_CH[contadorAux,17]<-1
        }
        
        if(gabarito_CH[18]==vet_respostas[18]){
          respostas_CH[contadorAux,18]<-1
        }
        
        if(gabarito_CH[19]==vet_respostas[19]){
          respostas_CH[contadorAux,19]<-1
        }
        
        if(gabarito_CH[20]==vet_respostas[20]){
          respostas_CH[contadorAux,20]<-1
        }
        
        if(gabarito_CH[21]==vet_respostas[21]){
          respostas_CH[contadorAux,21]<-1
        }
        
        if(gabarito_CH[22]==vet_respostas[22]){
          respostas_CH[contadorAux,22]<-1
        }
        
        if(gabarito_CH[23]==vet_respostas[23]){
          respostas_CH[contadorAux,23]<-1
        }
        
        if(gabarito_CH[24]==vet_respostas[24]){
          respostas_CH[contadorAux,24]<-1
        }
        
        if(gabarito_CH[25]==vet_respostas[25]){
          respostas_CH[contadorAux,25]<-1
        }
        
        if(gabarito_CH[26]==vet_respostas[26]){
          respostas_CH[contadorAux,26]<-1
        }
        
        if(gabarito_CH[27]==vet_respostas[27]){
          respostas_CH[contadorAux,27]<-1
        }
        
        if(gabarito_CH[28]==vet_respostas[28]){
          respostas_CH[contadorAux,28]<-1
        }
        
        if(gabarito_CH[29]==vet_respostas[29]){
          respostas_CH[contadorAux,29]<-1
        }
        
        if(gabarito_CH[30]==vet_respostas[30]){
          respostas_CH[contadorAux,30]<-1
        }
        
        if(gabarito_CH[31]==vet_respostas[31]){
          respostas_CH[contadorAux,31]<-1
        }
        
        if(gabarito_CH[32]==vet_respostas[32]){
          respostas_CH[contadorAux,32]<-1
        }
        
        if(gabarito_CH[33]==vet_respostas[33]){
          respostas_CH[contadorAux,33]<-1
        }
        
        if(gabarito_CH[34]==vet_respostas[34]){
          respostas_CH[contadorAux,34]<-1
        }
        
        if(gabarito_CH[35]==vet_respostas[35]){
          respostas_CH[contadorAux,35]<-1
        }
        
        if(gabarito_CH[36]==vet_respostas[36]){
          respostas_CH[contadorAux,36]<-1
        }
        
        if(gabarito_CH[37]==vet_respostas[37]){
          respostas_CH[contadorAux,37]<-1
        }
        
        if(gabarito_CH[38]==vet_respostas[38]){
          respostas_CH[contadorAux,38]<-1
        }
        
        if(gabarito_CH[39]==vet_respostas[39]){
          respostas_CH[contadorAux,39]<-1
        }
        
        if(gabarito_CH[40]==vet_respostas[40]){
          respostas_CH[contadorAux,40]<-1
        }
        
        if(gabarito_CH[41]==vet_respostas[41]){
          respostas_CH[contadorAux,41]<-1
        }
        
        if(gabarito_CH[42]==vet_respostas[42]){
          respostas_CH[contadorAux,42]<-1
        }
        
        if(gabarito_CH[43]==vet_respostas[43]){
          respostas_CH[contadorAux,43]<-1
        }
        
        if(gabarito_CH[44]==vet_respostas[44]){
          respostas_CH[contadorAux,44]<-1
        }
        
        if(gabarito_CH[45]==vet_respostas[45]){
          respostas_CH[contadorAux,45]<-1
        } 
      }

      if(dados[i,5]==118){ #prova amarela
        if(gabarito_CH[1]==vet_respostas[3]){
          respostas_CH[contadorAux,1]<-1
        }
        
        if(gabarito_CH[2]==vet_respostas[2]){
          respostas_CH[contadorAux,2]<-1
        }
        
        if(gabarito_CH[3]==vet_respostas[1]){
          respostas_CH[contadorAux,3]<-1
        }
        
        if(gabarito_CH[4]==vet_respostas[6]){
          respostas_CH[contadorAux,4]<-1
        }
        
        if(gabarito_CH[5]==vet_respostas[5]){
          respostas_CH[contadorAux,5]<-1
        }
        
        if(gabarito_CH[6]==vet_respostas[4]){
          respostas_CH[contadorAux,6]<-1
        }
        
        if(gabarito_CH[7]==vet_respostas[12]){
          respostas_CH[contadorAux,7]<-1
        }
        
        if(gabarito_CH[8]==vet_respostas[13]){
          respostas_CH[contadorAux,8]<-1
        }
        
        if(gabarito_CH[9]==vet_respostas[8]){
          respostas_CH[contadorAux,9]<-1
        }
        
        if(gabarito_CH[10]==vet_respostas[10]){
          respostas_CH[contadorAux,10]<-1
        }
        
        if(gabarito_CH[11]==vet_respostas[7]){
          respostas_CH[contadorAux,11]<-1
        }
        
        if(gabarito_CH[12]==vet_respostas[11]){
          respostas_CH[contadorAux,12]<-1
        }
        
        if(gabarito_CH[13]==vet_respostas[9]){
          respostas_CH[contadorAux,13]<-1
        }
        
        if(gabarito_CH[14]==vet_respostas[44]){
          respostas_CH[contadorAux,14]<-1
        }
        
        if(gabarito_CH[15]==vet_respostas[14]){
          respostas_CH[contadorAux,15]<-1
        }
        
        if(gabarito_CH[16]==vet_respostas[19]){
          respostas_CH[contadorAux,16]<-1
        }
        
        if(gabarito_CH[17]==vet_respostas[18]){
          respostas_CH[contadorAux,17]<-1
        }
        
        if(gabarito_CH[18]==vet_respostas[16]){
          respostas_CH[contadorAux,18]<-1
        }
        
        if(gabarito_CH[19]==vet_respostas[17]){
          respostas_CH[contadorAux,19]<-1
        }
        
        if(gabarito_CH[20]==vet_respostas[25]){
          respostas_CH[contadorAux,20]<-1
        }
        
        if(gabarito_CH[21]==vet_respostas[26]){
          respostas_CH[contadorAux,21]<-1
        }
        
        if(gabarito_CH[22]==vet_respostas[22]){
          respostas_CH[contadorAux,22]<-1
        }
        
        if(gabarito_CH[23]==vet_respostas[23]){
          respostas_CH[contadorAux,23]<-1
        }
        
        if(gabarito_CH[24]==vet_respostas[24]){
          respostas_CH[contadorAux,24]<-1
        }
        
        if(gabarito_CH[25]==vet_respostas[20]){
          respostas_CH[contadorAux,25]<-1
        }
        
        if(gabarito_CH[26]==vet_respostas[21]){
          respostas_CH[contadorAux,26]<-1
        }
        
        if(gabarito_CH[27]==vet_respostas[28]){
          respostas_CH[contadorAux,27]<-1
        }
        
        if(gabarito_CH[28]==vet_respostas[29]){
          respostas_CH[contadorAux,28]<-1
        }
        
        if(gabarito_CH[29]==vet_respostas[27]){
          respostas_CH[contadorAux,29]<-1
        }
        
        if(gabarito_CH[30]==vet_respostas[33]){
          respostas_CH[contadorAux,30]<-1
        }
        
        if(gabarito_CH[31]==vet_respostas[30]){
          respostas_CH[contadorAux,31]<-1
        }
        
        if(gabarito_CH[32]==vet_respostas[32]){
          respostas_CH[contadorAux,32]<-1
        }
        
        if(gabarito_CH[33]==vet_respostas[31]){
          respostas_CH[contadorAux,33]<-1
        }
        
        if(gabarito_CH[34]==vet_respostas[35]){
          respostas_CH[contadorAux,34]<-1
        }
        
        if(gabarito_CH[35]==vet_respostas[36]){
          respostas_CH[contadorAux,35]<-1
        }
        
        if(gabarito_CH[36]==vet_respostas[34]){
          respostas_CH[contadorAux,36]<-1
        }
        
        if(gabarito_CH[37]==vet_respostas[39]){
          respostas_CH[contadorAux,37]<-1
        }
        
        if(gabarito_CH[38]==vet_respostas[40]){
          respostas_CH[contadorAux,38]<-1
        }
        
        if(gabarito_CH[39]==vet_respostas[37]){
          respostas_CH[contadorAux,39]<-1
        }
        
        if(gabarito_CH[40]==vet_respostas[38]){
          respostas_CH[contadorAux,40]<-1
        }
        
        if(gabarito_CH[41]==vet_respostas[42]){
          respostas_CH[contadorAux,41]<-1
        }
        
        if(gabarito_CH[42]==vet_respostas[43]){
          respostas_CH[contadorAux,42]<-1
        }
        
        if(gabarito_CH[43]==vet_respostas[41]){
          respostas_CH[contadorAux,43]<-1
        }
        
        if(gabarito_CH[44]==vet_respostas[15]){
          respostas_CH[contadorAux,44]<-1
        }
        
        if(gabarito_CH[45]==vet_respostas[45]){
          respostas_CH[contadorAux,45]<-1
        } 
      }
  
      if(dados[i,5]==119 || 134){ #prova branca
        if(gabarito_CH[1]==vet_respostas[1]){
          respostas_CH[contadorAux,1]<-1
        }
        
        if(gabarito_CH[2]==vet_respostas[3]){
          respostas_CH[contadorAux,2]<-1
        }
        
        if(gabarito_CH[3]==vet_respostas[2]){
          respostas_CH[contadorAux,3]<-1
        }
        
        if(gabarito_CH[4]==vet_respostas[4]){
          respostas_CH[contadorAux,4]<-1
        }
        
        if(gabarito_CH[5]==vet_respostas[6]){
          respostas_CH[contadorAux,5]<-1
        }
        
        if(gabarito_CH[6]==vet_respostas[5]){
          respostas_CH[contadorAux,6]<-1
        }
        
        if(gabarito_CH[7]==vet_respostas[8]){
          respostas_CH[contadorAux,7]<-1
        }
        
        if(gabarito_CH[8]==vet_respostas[7]){
          respostas_CH[contadorAux,8]<-1
        }
        
        if(gabarito_CH[9]==vet_respostas[13]){
          respostas_CH[contadorAux,9]<-1
        }
        
        if(gabarito_CH[10]==vet_respostas[12]){
          respostas_CH[contadorAux,10]<-1
        }
        
        if(gabarito_CH[11]==vet_respostas[9]){
          respostas_CH[contadorAux,11]<-1
        }
        
        if(gabarito_CH[12]==vet_respostas[10]){
          respostas_CH[contadorAux,12]<-1
        }
        
        if(gabarito_CH[13]==vet_respostas[11]){
          respostas_CH[contadorAux,13]<-1
        }
        
        if(gabarito_CH[14]==vet_respostas[14]){
          respostas_CH[contadorAux,14]<-1
        }
        
        if(gabarito_CH[15]==vet_respostas[44]){
          respostas_CH[contadorAux,15]<-1
        }
        
        if(gabarito_CH[16]==vet_respostas[16]){
          respostas_CH[contadorAux,16]<-1
        }
        
        if(gabarito_CH[17]==vet_respostas[18]){
          respostas_CH[contadorAux,17]<-1
        }
        
        if(gabarito_CH[18]==vet_respostas[17]){
          respostas_CH[contadorAux,18]<-1
        }
        
        if(gabarito_CH[19]==vet_respostas[19]){
          respostas_CH[contadorAux,19]<-1
        }
        
        if(gabarito_CH[20]==vet_respostas[23]){
          respostas_CH[contadorAux,20]<-1
        }
        
        if(gabarito_CH[21]==vet_respostas[24]){
          respostas_CH[contadorAux,21]<-1
        }
        
        if(gabarito_CH[22]==vet_respostas[20]){
          respostas_CH[contadorAux,22]<-1
        }
        
        if(gabarito_CH[23]==vet_respostas[25]){
          respostas_CH[contadorAux,23]<-1
        }
        
        if(gabarito_CH[24]==vet_respostas[26]){
          respostas_CH[contadorAux,24]<-1
        }
        
        if(gabarito_CH[25]==vet_respostas[21]){
          respostas_CH[contadorAux,25]<-1
        }
        
        if(gabarito_CH[26]==vet_respostas[22]){
          respostas_CH[contadorAux,26]<-1
        }
        
        if(gabarito_CH[27]==vet_respostas[27]){
          respostas_CH[contadorAux,27]<-1
        }
        
        if(gabarito_CH[28]==vet_respostas[28]){
          respostas_CH[contadorAux,28]<-1
        }
        
        if(gabarito_CH[29]==vet_respostas[30]){
          respostas_CH[contadorAux,29]<-1
        }
        
        if(gabarito_CH[30]==vet_respostas[31]){
          respostas_CH[contadorAux,30]<-1
        }
        
        if(gabarito_CH[31]==vet_respostas[32]){
          respostas_CH[contadorAux,31]<-1
        }
        
        if(gabarito_CH[32]==vet_respostas[29]){
          respostas_CH[contadorAux,32]<-1
        }
        
        if(gabarito_CH[33]==vet_respostas[33]){
          respostas_CH[contadorAux,33]<-1
        }
        
        if(gabarito_CH[34]==vet_respostas[34]){
          respostas_CH[contadorAux,34]<-1
        }
        
        if(gabarito_CH[35]==vet_respostas[35]){
          respostas_CH[contadorAux,35]<-1
        }
        
        if(gabarito_CH[36]==vet_respostas[38]){
          respostas_CH[contadorAux,36]<-1
        }
        
        if(gabarito_CH[37]==vet_respostas[40]){
          respostas_CH[contadorAux,37]<-1
        }
        
        if(gabarito_CH[38]==vet_respostas[37]){
          respostas_CH[contadorAux,38]<-1
        }
        
        if(gabarito_CH[39]==vet_respostas[39]){
          respostas_CH[contadorAux,39]<-1
        }
        
        if(gabarito_CH[40]==vet_respostas[36]){
          respostas_CH[contadorAux,40]<-1
        }
        
        if(gabarito_CH[41]==vet_respostas[43]){
          respostas_CH[contadorAux,41]<-1
        }
        
        if(gabarito_CH[42]==vet_respostas[42]){
          respostas_CH[contadorAux,42]<-1
        }
        
        if(gabarito_CH[43]==vet_respostas[41]){
          respostas_CH[contadorAux,43]<-1
        }
        
        if(gabarito_CH[44]==vet_respostas[45]){
          respostas_CH[contadorAux,44]<-1
        }
        
        if(gabarito_CH[45]==vet_respostas[15]){
          respostas_CH[contadorAux,45]<-1
        } 
      }
      
      if(dados[i,5]==120){ #prova rosa
        if(gabarito_CH[1]==vet_respostas[3]){
          respostas_CH[contadorAux,1]<-1
        }
        
        if(gabarito_CH[2]==vet_respostas[1]){
          respostas_CH[contadorAux,2]<-1
        }
        
        if(gabarito_CH[3]==vet_respostas[2]){
          respostas_CH[contadorAux,3]<-1
        }
        
        if(gabarito_CH[4]==vet_respostas[6]){
          respostas_CH[contadorAux,4]<-1
        }
        
        if(gabarito_CH[5]==vet_respostas[4]){
          respostas_CH[contadorAux,5]<-1
        }
        
        if(gabarito_CH[6]==vet_respostas[5]){
          respostas_CH[contadorAux,6]<-1
        }
        
        if(gabarito_CH[7]==vet_respostas[9]){
          respostas_CH[contadorAux,7]<-1
        }
        
        if(gabarito_CH[8]==vet_respostas[13]){
          respostas_CH[contadorAux,8]<-1
        }
    
        if(gabarito_CH[9]==vet_respostas[12]){
          respostas_CH[contadorAux,9]<-1
        }
        
        if(gabarito_CH[10]==vet_respostas[8]){
          respostas_CH[contadorAux,10]<-1
        }
        
        if(gabarito_CH[11]==vet_respostas[11]){
          respostas_CH[contadorAux,11]<-1
        }
        
        if(gabarito_CH[12]==vet_respostas[10]){
          respostas_CH[contadorAux,12]<-1
        }
        
        if(gabarito_CH[13]==vet_respostas[7]){
          respostas_CH[contadorAux,13]<-1
        }
        
        if(gabarito_CH[14]==vet_respostas[44]){
          respostas_CH[contadorAux,14]<-1
        }
        
        if(gabarito_CH[15]==vet_respostas[45]){
          respostas_CH[contadorAux,15]<-1
        }
        
        if(gabarito_CH[16]==vet_respostas[17]){
          respostas_CH[contadorAux,16]<-1
        }
        
        if(gabarito_CH[17]==vet_respostas[16]){
          respostas_CH[contadorAux,17]<-1
        }
        
        if(gabarito_CH[18]==vet_respostas[19]){
          respostas_CH[contadorAux,18]<-1
        }
        
        if(gabarito_CH[19]==vet_respostas[18]){
          respostas_CH[contadorAux,19]<-1
        }
        
        if(gabarito_CH[20]==vet_respostas[25]){
          respostas_CH[contadorAux,20]<-1
        }
        
        if(gabarito_CH[21]==vet_respostas[26]){
          respostas_CH[contadorAux,21]<-1
        }
        
        if(gabarito_CH[22]==vet_respostas[24]){
          respostas_CH[contadorAux,22]<-1
        }
        
        if(gabarito_CH[23]==vet_respostas[20]){
          respostas_CH[contadorAux,23]<-1
        }
        
        if(gabarito_CH[24]==vet_respostas[21]){
          respostas_CH[contadorAux,24]<-1
        }
        
        if(gabarito_CH[25]==vet_respostas[22]){
          respostas_CH[contadorAux,25]<-1
        }
        
        if(gabarito_CH[26]==vet_respostas[23]){
          respostas_CH[contadorAux,26]<-1
        }
        
        if(gabarito_CH[27]==vet_respostas[29]){
          respostas_CH[contadorAux,27]<-1
        }
        
        if(gabarito_CH[28]==vet_respostas[30]){
          respostas_CH[contadorAux,28]<-1
        }
        
        if(gabarito_CH[29]==vet_respostas[31]){
          respostas_CH[contadorAux,29]<-1
        }
        
        if(gabarito_CH[30]==vet_respostas[28]){
          respostas_CH[contadorAux,30]<-1
        }
        
        if(gabarito_CH[31]==vet_respostas[33]){
          respostas_CH[contadorAux,31]<-1
        }
        
        if(gabarito_CH[32]==vet_respostas[27]){
          respostas_CH[contadorAux,32]<-1
        }
        
        if(gabarito_CH[33]==vet_respostas[32]){
          respostas_CH[contadorAux,33]<-1
        }
        
        if(gabarito_CH[34]==vet_respostas[38]){
          respostas_CH[contadorAux,34]<-1
        }
        
        if(gabarito_CH[35]==vet_respostas[36]){
          respostas_CH[contadorAux,35]<-1
        }
        
        if(gabarito_CH[36]==vet_respostas[37]){
          respostas_CH[contadorAux,36]<-1
        }
        
        if(gabarito_CH[37]==vet_respostas[35]){
          respostas_CH[contadorAux,37]<-1
        }
        
        if(gabarito_CH[38]==vet_respostas[40]){
          respostas_CH[contadorAux,38]<-1
        }
        
        if(gabarito_CH[39]==vet_respostas[34]){
          respostas_CH[contadorAux,39]<-1
        }
        
        if(gabarito_CH[40]==vet_respostas[39]){
          respostas_CH[contadorAux,40]<-1
        }
        
        if(gabarito_CH[41]==vet_respostas[42]){
          respostas_CH[contadorAux,41]<-1
        }
        
        if(gabarito_CH[42]==vet_respostas[41]){
          respostas_CH[contadorAux,42]<-1
        }
        
        if(gabarito_CH[43]==vet_respostas[43]){
          respostas_CH[contadorAux,43]<-1
        }
        
        if(gabarito_CH[44]==vet_respostas[14]){
          respostas_CH[contadorAux,44]<-1
        }
        
        if(gabarito_CH[45]==vet_respostas[15]){
          respostas_CH[contadorAux,45]<-1
        } 
      }
    
    resposta <- NULL
  }


write.csv(respostas_CH, file = "respostas_zeros_e_uns50k_CH.csv")





