rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)

dados <-read.csv("amostra_enem2015_50k.csv")

dados$TP_PRESENCA_CN<-NULL
dados$TP_PRESENCA_CH<-NULL
dados$TP_PRESENCA_LC<-NULL
dados$TP_PRESENCA_MT<-NULL
dados$X<-NULL

contadorAux <-0

respostas_CN <- matrix(0, nrow=50000, ncol = 45)
vet_respostas <- c("C","B","A","D","A","A","D","A","D","A","A","B","C","A","D","A","C","D","E","A","A","B","C","A","D","A","C","D","E","A","A","B","C","A","D","A","C","D","E","A","A","C","D","E","A")
gabarito_azul_CN <- c("D","C","C","D","B","C","A","A","E","B","E","C","B","A","A","D","A","D","B","D","E","D","E","E","B","B","B","C","A","B","C","C","E","A","A","E","E","D","C","B","D","D","C","E","A")



  for(i in 1:nrow(dados)){
    
      rm(resposta)
      contadorAux <- contadorAux + 1
      print(contadorAux)
      resposta<-dados[i,5]
      for(k in 1:45){
        vet_respostas[k]<-str_sub(resposta,k,k)
      }
      if(dados[i,1]==235){ #prova azul
        if(gabarito_azul_CN[1]==vet_respostas[1]){
          respostas_CN[contadorAux,1]<-1
        }
       
        if(gabarito_azul_CN[2]==vet_respostas[2]){
          respostas_CN[contadorAux,2]<-1
        }
       
        if(gabarito_azul_CN[3]==vet_respostas[3]){
          respostas_CN[contadorAux,3]<-1
        }
        
        if(gabarito_azul_CN[4]==vet_respostas[4]){
          respostas_CN[contadorAux,4]<-1
        }
        
        if(gabarito_azul_CN[5]==vet_respostas[5]){
          respostas_CN[contadorAux,5]<-1
        }
        
        if(gabarito_azul_CN[6]==vet_respostas[6]){
          respostas_CN[contadorAux,6]<-1
        }
        
        if(gabarito_azul_CN[7]==vet_respostas[7]){
          respostas_CN[contadorAux,7]<-1
        }
        
        if(gabarito_azul_CN[8]==vet_respostas[8]){
          respostas_CN[contadorAux,8]<-1
        }
        
        if(gabarito_azul_CN[9]==vet_respostas[9]){
          respostas_CN[contadorAux,9]<-1
        }
        
        if(gabarito_azul_CN[10]==vet_respostas[10]){
          respostas_CN[contadorAux,10]<-1
        }
        
        if(gabarito_azul_CN[11]==vet_respostas[11]){
          respostas_CN[contadorAux,11]<-1
        }
        
        if(gabarito_azul_CN[12]==vet_respostas[12]){
          respostas_CN[contadorAux,12]<-1
        }
        
        if(gabarito_azul_CN[13]==vet_respostas[13]){
          respostas_CN[contadorAux,13]<-1
        }
        
        if(gabarito_azul_CN[14]==vet_respostas[14]){
          respostas_CN[contadorAux,14]<-1
        }
        
        if(gabarito_azul_CN[15]==vet_respostas[15]){
          respostas_CN[contadorAux,15]<-1
        }
        
        if(gabarito_azul_CN[16]==vet_respostas[16]){
          respostas_CN[contadorAux,16]<-1
        }
        
        if(gabarito_azul_CN[17]==vet_respostas[17]){
          respostas_CN[contadorAux,17]<-1
        }
        
        if(gabarito_azul_CN[18]==vet_respostas[18]){
          respostas_CN[contadorAux,18]<-1
        }
        
        if(gabarito_azul_CN[19]==vet_respostas[19]){
          respostas_CN[contadorAux,19]<-1
        }
        
        if(gabarito_azul_CN[20]==vet_respostas[20]){
          respostas_CN[contadorAux,20]<-1
        }
        
        if(gabarito_azul_CN[21]==vet_respostas[21]){
          respostas_CN[contadorAux,21]<-1
        }
        
        if(gabarito_azul_CN[22]==vet_respostas[22]){
          respostas_CN[contadorAux,22]<-1
        }
        
        if(gabarito_azul_CN[23]==vet_respostas[23]){
          respostas_CN[contadorAux,23]<-1
        }
        
        if(gabarito_azul_CN[24]==vet_respostas[24]){
          respostas_CN[contadorAux,24]<-1
        }
        
        if(gabarito_azul_CN[25]==vet_respostas[25]){
          respostas_CN[contadorAux,25]<-1
        }
        
        if(gabarito_azul_CN[26]==vet_respostas[26]){
          respostas_CN[contadorAux,26]<-1
        }
        
        if(gabarito_azul_CN[27]==vet_respostas[27]){
          respostas_CN[contadorAux,27]<-1
        }
        
        if(gabarito_azul_CN[28]==vet_respostas[28]){
          respostas_CN[contadorAux,28]<-1
        }
        
        if(gabarito_azul_CN[29]==vet_respostas[29]){
          respostas_CN[contadorAux,29]<-1
        }
        
        if(gabarito_azul_CN[30]==vet_respostas[30]){
          respostas_CN[contadorAux,30]<-1
        }
        
        if(gabarito_azul_CN[31]==vet_respostas[31]){
          respostas_CN[contadorAux,31]<-1
        }
        
        if(gabarito_azul_CN[32]==vet_respostas[32]){
          respostas_CN[contadorAux,32]<-1
        }
        
        if(gabarito_azul_CN[33]==vet_respostas[33]){
          respostas_CN[contadorAux,33]<-1
        }
        
        if(gabarito_azul_CN[34]==vet_respostas[34]){
          respostas_CN[contadorAux,34]<-1
        }
        
        if(gabarito_azul_CN[35]==vet_respostas[35]){
          respostas_CN[contadorAux,35]<-1
        }
        
        if(gabarito_azul_CN[36]==vet_respostas[36]){
          respostas_CN[contadorAux,36]<-1
        }
        
        if(gabarito_azul_CN[37]==vet_respostas[37]){
          respostas_CN[contadorAux,37]<-1
        }
        
        if(gabarito_azul_CN[38]==vet_respostas[38]){
          respostas_CN[contadorAux,38]<-1
        }
        
        if(gabarito_azul_CN[39]==vet_respostas[39]){
          respostas_CN[contadorAux,39]<-1
        }
        
        if(gabarito_azul_CN[40]==vet_respostas[40]){
          respostas_CN[contadorAux,40]<-1
        }
        
        if(gabarito_azul_CN[41]==vet_respostas[41]){
          respostas_CN[contadorAux,41]<-1
        }
        
        if(gabarito_azul_CN[42]==vet_respostas[42]){
          respostas_CN[contadorAux,42]<-1
        }
        
        if(gabarito_azul_CN[43]==vet_respostas[43]){
          respostas_CN[contadorAux,43]<-1
        }
        
        if(gabarito_azul_CN[44]==vet_respostas[44]){
          respostas_CN[contadorAux,44]<-1
        }
        
        if(gabarito_azul_CN[45]==vet_respostas[45]){
          respostas_CN[contadorAux,45]<-1
        } 
      }
  
      if(dados[i,1]==236){ #prova amarela
        if(gabarito_azul_CN[1]==vet_respostas[48-45]){
          respostas_CN[contadorAux,1]<-1
        }
        
        if(gabarito_azul_CN[2]==vet_respostas[49-45]){
          respostas_CN[contadorAux,2]<-1
        }
        
        if(gabarito_azul_CN[3]==vet_respostas[76-45]){
          respostas_CN[contadorAux,3]<-1
        }
        
        if(gabarito_azul_CN[4]==vet_respostas[77-45]){
          respostas_CN[contadorAux,4]<-1
        }
        
        if(gabarito_azul_CN[5]==vet_respostas[88-45]){
          respostas_CN[contadorAux,5]<-1
        }
        
        if(gabarito_azul_CN[6]==vet_respostas[89-45]){
          respostas_CN[contadorAux,6]<-1
        }
        
        if(gabarito_azul_CN[7]==vet_respostas[90-45]){
          respostas_CN[contadorAux,7]<-1
        }
        
        if(gabarito_azul_CN[8]==vet_respostas[46-45]){
          respostas_CN[contadorAux,8]<-1
        }
        
        if(gabarito_azul_CN[9]==vet_respostas[47-45]){
          respostas_CN[contadorAux,9]<-1
        }
        
        if(gabarito_azul_CN[10]==vet_respostas[69-45]){
          respostas_CN[contadorAux,10]<-1
        }
        
        if(gabarito_azul_CN[11]==vet_respostas[70-45]){
          respostas_CN[contadorAux,11]<-1
        }
        
        if(gabarito_azul_CN[12]==vet_respostas[71-45]){
          respostas_CN[contadorAux,12]<-1
        }
        
        if(gabarito_azul_CN[13]==vet_respostas[72-45]){
          respostas_CN[contadorAux,13]<-1
        }
        
        if(gabarito_azul_CN[14]==vet_respostas[85-45]){
          respostas_CN[contadorAux,14]<-1
        }
        
        if(gabarito_azul_CN[15]==vet_respostas[86-45]){
          respostas_CN[contadorAux,15]<-1
        }
        
        if(gabarito_azul_CN[16]==vet_respostas[87-45]){
          respostas_CN[contadorAux,16]<-1
        }
        
        if(gabarito_azul_CN[17]==vet_respostas[50-45]){
          respostas_CN[contadorAux,17]<-1
        }
        
        if(gabarito_azul_CN[18]==vet_respostas[51-45]){
          respostas_CN[contadorAux,18]<-1
        }
        
        if(gabarito_azul_CN[19]==vet_respostas[52-45]){
          respostas_CN[contadorAux,19]<-1
        }
        
        if(gabarito_azul_CN[20]==vet_respostas[82-45]){
          respostas_CN[contadorAux,20]<-1
        }
        
        if(gabarito_azul_CN[21]==vet_respostas[83-45]){
          respostas_CN[contadorAux,21]<-1
        }
        
        if(gabarito_azul_CN[22]==vet_respostas[84-45]){
          respostas_CN[contadorAux,22]<-1
        }
        
        if(gabarito_azul_CN[23]==vet_respostas[80-45]){
          respostas_CN[contadorAux,23]<-1
        }
        
        if(gabarito_azul_CN[24]==vet_respostas[81-45]){
          respostas_CN[contadorAux,24]<-1
        }
        
        if(gabarito_azul_CN[25]==vet_respostas[59-45]){
          respostas_CN[contadorAux,25]<-1
        }
        
        if(gabarito_azul_CN[26]==vet_respostas[60-45]){
          respostas_CN[contadorAux,26]<-1
        }
        
        if(gabarito_azul_CN[27]==vet_respostas[61-45]){
          respostas_CN[contadorAux,27]<-1
        }
        
        if(gabarito_azul_CN[28]==vet_respostas[53-45]){
          respostas_CN[contadorAux,28]<-1
        }
        
        if(gabarito_azul_CN[29]==vet_respostas[54-45]){
          respostas_CN[contadorAux,29]<-1
        }
        
        if(gabarito_azul_CN[30]==vet_respostas[55-45]){
          respostas_CN[contadorAux,30]<-1
        }
        
        if(gabarito_azul_CN[31]==vet_respostas[56-45]){
          respostas_CN[contadorAux,31]<-1
        }
        
        if(gabarito_azul_CN[32]==vet_respostas[65-45]){
          respostas_CN[contadorAux,32]<-1
        }
        
        if(gabarito_azul_CN[33]==vet_respostas[66-45]){
          respostas_CN[contadorAux,33]<-1
        }
        
        if(gabarito_azul_CN[34]==vet_respostas[67-45]){
          respostas_CN[contadorAux,34]<-1
        }
        
        if(gabarito_azul_CN[35]==vet_respostas[68-45]){
          respostas_CN[contadorAux,35]<-1
        }
        
        if(gabarito_azul_CN[36]==vet_respostas[62-45]){
          respostas_CN[contadorAux,36]<-1
        }
        
        if(gabarito_azul_CN[37]==vet_respostas[63-45]){
          respostas_CN[contadorAux,37]<-1
        }
        
        if(gabarito_azul_CN[38]==vet_respostas[64-45]){
          respostas_CN[contadorAux,38]<-1
        }
        
        if(gabarito_azul_CN[39]==vet_respostas[57-45]){
          respostas_CN[contadorAux,39]<-1
        }
        
        if(gabarito_azul_CN[40]==vet_respostas[58-45]){
          respostas_CN[contadorAux,40]<-1
        }
        
        if(gabarito_azul_CN[41]==vet_respostas[73-45]){
          respostas_CN[contadorAux,41]<-1
        }
        
        if(gabarito_azul_CN[42]==vet_respostas[74-45]){
          respostas_CN[contadorAux,42]<-1
        }
        
        if(gabarito_azul_CN[43]==vet_respostas[75-45]){
          respostas_CN[contadorAux,43]<-1
        }
        
        if(gabarito_azul_CN[44]==vet_respostas[78-45]){
          respostas_CN[contadorAux,44]<-1
        }
        
        if(gabarito_azul_CN[45]==vet_respostas[79-45]){
          respostas_CN[contadorAux,45]<-1
        } 
      }
    
      if(dados[i,1]==237){ #prova branca
        if(gabarito_azul_CN[1]==vet_respostas[89-45]){
          respostas_CN[contadorAux,1]<-1
        }
        
        if(gabarito_azul_CN[2]==vet_respostas[90-45]){
          respostas_CN[contadorAux,2]<-1
        }
        
        if(gabarito_azul_CN[3]==vet_respostas[87-45]){
          respostas_CN[contadorAux,3]<-1
        }
        
        if(gabarito_azul_CN[4]==vet_respostas[88-45]){
          respostas_CN[contadorAux,4]<-1
        }
        
        if(gabarito_azul_CN[5]==vet_respostas[84-45]){
          respostas_CN[contadorAux,5]<-1
        }
        
        if(gabarito_azul_CN[6]==vet_respostas[85-45]){
          respostas_CN[contadorAux,6]<-1
        }
        
        if(gabarito_azul_CN[7]==vet_respostas[86-45]){
          respostas_CN[contadorAux,7]<-1
        }
        
        if(gabarito_azul_CN[8]==vet_respostas[82-45]){
          respostas_CN[contadorAux,8]<-1
        }
        
        if(gabarito_azul_CN[9]==vet_respostas[83-45]){
          respostas_CN[contadorAux,9]<-1
        }
        
        if(gabarito_azul_CN[10]==vet_respostas[78-45]){
          respostas_CN[contadorAux,10]<-1
        }
        
        if(gabarito_azul_CN[11]==vet_respostas[79-45]){
          respostas_CN[contadorAux,11]<-1
        }
        
        if(gabarito_azul_CN[12]==vet_respostas[80-45]){
          respostas_CN[contadorAux,12]<-1
        }
        
        if(gabarito_azul_CN[13]==vet_respostas[81-45]){
          respostas_CN[contadorAux,13]<-1
        }
        
        if(gabarito_azul_CN[14]==vet_respostas[75-45]){
          respostas_CN[contadorAux,14]<-1
        }
        
        if(gabarito_azul_CN[15]==vet_respostas[76-45]){
          respostas_CN[contadorAux,15]<-1
        }
        
        if(gabarito_azul_CN[16]==vet_respostas[77-45]){
          respostas_CN[contadorAux,16]<-1
        }
        
        if(gabarito_azul_CN[17]==vet_respostas[65-45]){
          respostas_CN[contadorAux,17]<-1
        }
        
        if(gabarito_azul_CN[18]==vet_respostas[66-45]){
          respostas_CN[contadorAux,18]<-1
        }
        
        if(gabarito_azul_CN[19]==vet_respostas[67-45]){
          respostas_CN[contadorAux,19]<-1
        }
        
        if(gabarito_azul_CN[20]==vet_respostas[72-45]){
          respostas_CN[contadorAux,20]<-1
        }
        
        if(gabarito_azul_CN[21]==vet_respostas[73-45]){
          respostas_CN[contadorAux,21]<-1
        }
        
        if(gabarito_azul_CN[22]==vet_respostas[74-45]){
          respostas_CN[contadorAux,22]<-1
        }
        
        if(gabarito_azul_CN[23]==vet_respostas[63-45]){
          respostas_CN[contadorAux,23]<-1
        }
        
        if(gabarito_azul_CN[24]==vet_respostas[64-45]){
          respostas_CN[contadorAux,24]<-1
        }
        
        if(gabarito_azul_CN[25]==vet_respostas[60-45]){
          respostas_CN[contadorAux,25]<-1
        }
        
        if(gabarito_azul_CN[26]==vet_respostas[61-45]){
          respostas_CN[contadorAux,26]<-1
        }
        
        if(gabarito_azul_CN[27]==vet_respostas[62-45]){
          respostas_CN[contadorAux,27]<-1
        }
        
        if(gabarito_azul_CN[28]==vet_respostas[68-45]){
          respostas_CN[contadorAux,28]<-1
        }
        
        if(gabarito_azul_CN[29]==vet_respostas[69-45]){
          respostas_CN[contadorAux,29]<-1
        }
        
        if(gabarito_azul_CN[30]==vet_respostas[70-45]){
          respostas_CN[contadorAux,30]<-1
        }
        
        if(gabarito_azul_CN[31]==vet_respostas[71-45]){
          respostas_CN[contadorAux,31]<-1
        }
        
        if(gabarito_azul_CN[32]==vet_respostas[56-45]){
          respostas_CN[contadorAux,32]<-1
        }
        
        if(gabarito_azul_CN[33]==vet_respostas[57-45]){
          respostas_CN[contadorAux,33]<-1
        }
        
        if(gabarito_azul_CN[34]==vet_respostas[58-45]){
          respostas_CN[contadorAux,34]<-1
        }
        
        if(gabarito_azul_CN[35]==vet_respostas[59-45]){
          respostas_CN[contadorAux,35]<-1
        }
        
        if(gabarito_azul_CN[36]==vet_respostas[53-45]){
          respostas_CN[contadorAux,36]<-1
        }
        
        if(gabarito_azul_CN[37]==vet_respostas[54-45]){
          respostas_CN[contadorAux,37]<-1
        }
        
        if(gabarito_azul_CN[38]==vet_respostas[55-45]){
          respostas_CN[contadorAux,38]<-1
        }
        
        if(gabarito_azul_CN[39]==vet_respostas[51-45]){
          respostas_CN[contadorAux,39]<-1
        }
        
        if(gabarito_azul_CN[40]==vet_respostas[52-45]){
          respostas_CN[contadorAux,40]<-1
        }
        
        if(gabarito_azul_CN[41]==vet_respostas[48-45]){
          respostas_CN[contadorAux,41]<-1
        }
        
        if(gabarito_azul_CN[42]==vet_respostas[49-45]){
          respostas_CN[contadorAux,42]<-1
        }
        
        if(gabarito_azul_CN[43]==vet_respostas[50-45]){
          respostas_CN[contadorAux,43]<-1
        }
        
        if(gabarito_azul_CN[44]==vet_respostas[46-45]){
          respostas_CN[contadorAux,44]<-1
        }
        
        if(gabarito_azul_CN[45]==vet_respostas[47-45]){
          respostas_CN[contadorAux,45]<-1
        } 
      }
      
      if(dados[i,1]==238){ #prova rosa
        if(gabarito_azul_CN[1]==vet_respostas[72-45]){
          respostas_CN[contadorAux,1]<-1
        }
        
        if(gabarito_azul_CN[2]==vet_respostas[73-45]){
          respostas_CN[contadorAux,2]<-1
        }
        
        if(gabarito_azul_CN[3]==vet_respostas[89-45]){
          respostas_CN[contadorAux,3]<-1
        }
        
        if(gabarito_azul_CN[4]==vet_respostas[90-45]){
          respostas_CN[contadorAux,4]<-1
        }
        
        if(gabarito_azul_CN[5]==vet_respostas[74-45]){
          respostas_CN[contadorAux,5]<-1
        }
        
        if(gabarito_azul_CN[6]==vet_respostas[75-45]){
          respostas_CN[contadorAux,6]<-1
        }
        
        if(gabarito_azul_CN[7]==vet_respostas[76-45]){
          respostas_CN[contadorAux,7]<-1
        }
        
        if(gabarito_azul_CN[8]==vet_respostas[70-45]){
          respostas_CN[contadorAux,8]<-1
        }
        
        if(gabarito_azul_CN[9]==vet_respostas[71-45]){
          respostas_CN[contadorAux,9]<-1
        }
        
        if(gabarito_azul_CN[10]==vet_respostas[62-45]){
          respostas_CN[contadorAux,10]<-1
        }
        
        if(gabarito_azul_CN[11]==vet_respostas[63-45]){
          respostas_CN[contadorAux,11]<-1
        }
        
        if(gabarito_azul_CN[12]==vet_respostas[64-45]){
          respostas_CN[contadorAux,12]<-1
        }
        
        if(gabarito_azul_CN[13]==vet_respostas[65-45]){
          respostas_CN[contadorAux,13]<-1
        }
        
        if(gabarito_azul_CN[14]==vet_respostas[56-45]){
          respostas_CN[contadorAux,14]<-1
        }
        
        if(gabarito_azul_CN[15]==vet_respostas[57-45]){
          respostas_CN[contadorAux,15]<-1
        }
        
        if(gabarito_azul_CN[16]==vet_respostas[58-45]){
          respostas_CN[contadorAux,16]<-1
        }
        
        if(gabarito_azul_CN[17]==vet_respostas[77-45]){
          respostas_CN[contadorAux,17]<-1
        }
        
        if(gabarito_azul_CN[18]==vet_respostas[78-45]){
          respostas_CN[contadorAux,18]<-1
        }
        
        if(gabarito_azul_CN[19]==vet_respostas[79-45]){
          respostas_CN[contadorAux,19]<-1
        }
        
        if(gabarito_azul_CN[20]==vet_respostas[59-45]){
          respostas_CN[contadorAux,20]<-1
        }
        
        if(gabarito_azul_CN[21]==vet_respostas[60-45]){
          respostas_CN[contadorAux,21]<-1
        }
        
        if(gabarito_azul_CN[22]==vet_respostas[61-45]){
          respostas_CN[contadorAux,22]<-1
        }
        
        if(gabarito_azul_CN[23]==vet_respostas[49-45]){
          respostas_CN[contadorAux,23]<-1
        }
        
        if(gabarito_azul_CN[24]==vet_respostas[50-45]){
          respostas_CN[contadorAux,24]<-1
        }
        
        if(gabarito_azul_CN[25]==vet_respostas[53-45]){
          respostas_CN[contadorAux,25]<-1
        }
        
        if(gabarito_azul_CN[26]==vet_respostas[54-45]){
          respostas_CN[contadorAux,26]<-1
        }
        
        if(gabarito_azul_CN[27]==vet_respostas[55-45]){
          respostas_CN[contadorAux,27]<-1
        }
        
        if(gabarito_azul_CN[28]==vet_respostas[66-45]){
          respostas_CN[contadorAux,28]<-1
        }
        
        if(gabarito_azul_CN[29]==vet_respostas[67-45]){
          respostas_CN[contadorAux,29]<-1
        }
        
        if(gabarito_azul_CN[30]==vet_respostas[68-45]){
          respostas_CN[contadorAux,30]<-1
        }
        
        if(gabarito_azul_CN[31]==vet_respostas[69-45]){
          respostas_CN[contadorAux,31]<-1
        }
        
        if(gabarito_azul_CN[32]==vet_respostas[80-45]){
          respostas_CN[contadorAux,32]<-1
        }
        
        if(gabarito_azul_CN[33]==vet_respostas[81-45]){
          respostas_CN[contadorAux,33]<-1
        }
        
        if(gabarito_azul_CN[34]==vet_respostas[82-45]){
          respostas_CN[contadorAux,34]<-1
        }
        
        if(gabarito_azul_CN[35]==vet_respostas[83-45]){
          respostas_CN[contadorAux,35]<-1
        }
        
        if(gabarito_azul_CN[36]==vet_respostas[84-45]){
          respostas_CN[contadorAux,36]<-1
        }
        
        if(gabarito_azul_CN[37]==vet_respostas[85-45]){
          respostas_CN[contadorAux,37]<-1
        }
        
        if(gabarito_azul_CN[38]==vet_respostas[86-45]){
          respostas_CN[contadorAux,38]<-1
        }
        
        if(gabarito_azul_CN[39]==vet_respostas[87-45]){
          respostas_CN[contadorAux,39]<-1
        }
        
        if(gabarito_azul_CN[40]==vet_respostas[88-45]){
          respostas_CN[contadorAux,40]<-1
        }
        
        if(gabarito_azul_CN[41]==vet_respostas[46-45]){
          respostas_CN[contadorAux,41]<-1
        }
        
        if(gabarito_azul_CN[42]==vet_respostas[47-45]){
          respostas_CN[contadorAux,42]<-1
        }
        
        if(gabarito_azul_CN[43]==vet_respostas[48-45]){
          respostas_CN[contadorAux,43]<-1
        }
        
        if(gabarito_azul_CN[44]==vet_respostas[51-45]){
          respostas_CN[contadorAux,44]<-1
        }
        
        if(gabarito_azul_CN[45]==vet_respostas[52-45]){
          respostas_CN[contadorAux,45]<-1
        } 
      }
    
    resposta <- NULL
  }


write.csv(respostas_CN, file = "respostas_zeros_e_uns50k_CN.csv")











