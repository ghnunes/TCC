rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)

dados <-read.csv("amostra_enem2010_50k.csv")
dados$X<-NULL

contadorAux <-0

respostas_MT <- matrix(0, nrow=50000, ncol = 45)
gabarito_MT <- c("C","E","E","B","B","D","A","C","C","A","B","D","E","B","B","A","B","D","C","C","A","D","A","E","C","E","D","E","B","D","C","B","B","D","B","B","C","B","D","E","B","E","D","D","E")
respostas_candidato <- c(180)
vet_respostas <- c(45)
resposta = ""


  for(i in 1:nrow(dados)){
    
    rm(resposta)
    contadorAux <- contadorAux + 1
    print(contadorAux)
    resposta<-dados[i,2]
    for(k in 1:180){
      respostas_candidato[k]<-str_sub(resposta,k,k)
    }
    for(k in 1:45){
      vet_respostas[k]<-respostas_candidato[k+135]
    }
    
      if(dados[i,6]==99 || 115){ #prova azul
        if(gabarito_MT[1]==vet_respostas[1]){
          respostas_MT[contadorAux,1]<-1
        }
       
        if(gabarito_MT[2]==vet_respostas[2]){
          respostas_MT[contadorAux,2]<-1
        }
       
        if(gabarito_MT[3]==vet_respostas[3]){
          respostas_MT[contadorAux,3]<-1
        }
        
        if(gabarito_MT[4]==vet_respostas[4]){
          respostas_MT[contadorAux,4]<-1
        }
        
        if(gabarito_MT[5]==vet_respostas[5]){
          respostas_MT[contadorAux,5]<-1
        }
        
        if(gabarito_MT[6]==vet_respostas[6]){
          respostas_MT[contadorAux,6]<-1
        }
        
        if(gabarito_MT[7]==vet_respostas[7]){
          respostas_MT[contadorAux,7]<-1
        }
        
        if(gabarito_MT[8]==vet_respostas[8]){
          respostas_MT[contadorAux,8]<-1
        }
        
        if(gabarito_MT[9]==vet_respostas[9]){
          respostas_MT[contadorAux,9]<-1
        }
        
        if(gabarito_MT[10]==vet_respostas[10]){
          respostas_MT[contadorAux,10]<-1
        }
        
        if(gabarito_MT[11]==vet_respostas[11]){
          respostas_MT[contadorAux,11]<-1
        }
        
        if(gabarito_MT[12]==vet_respostas[12]){
          respostas_MT[contadorAux,12]<-1
        }
        
        if(gabarito_MT[13]==vet_respostas[13]){
          respostas_MT[contadorAux,13]<-1
        }
        
        if(gabarito_MT[14]==vet_respostas[14]){
          respostas_MT[contadorAux,14]<-1
        }
        
        if(gabarito_MT[15]==vet_respostas[15]){
          respostas_MT[contadorAux,15]<-1
        }
        
        if(gabarito_MT[16]==vet_respostas[16]){
          respostas_MT[contadorAux,16]<-1
        }
        
        if(gabarito_MT[17]==vet_respostas[17]){
          respostas_MT[contadorAux,17]<-1
        }
        
        if(gabarito_MT[18]==vet_respostas[18]){
          respostas_MT[contadorAux,18]<-1
        }
        
        if(gabarito_MT[19]==vet_respostas[19]){
          respostas_MT[contadorAux,19]<-1
        }
        
        if(gabarito_MT[20]==vet_respostas[20]){
          respostas_MT[contadorAux,20]<-1
        }
        
        if(gabarito_MT[21]==vet_respostas[21]){
          respostas_MT[contadorAux,21]<-1
        }
        
        if(gabarito_MT[22]==vet_respostas[22]){
          respostas_MT[contadorAux,22]<-1
        }
        
        if(gabarito_MT[23]==vet_respostas[23]){
          respostas_MT[contadorAux,23]<-1
        }
        
        if(gabarito_MT[24]==vet_respostas[24]){
          respostas_MT[contadorAux,24]<-1
        }
        
        if(gabarito_MT[25]==vet_respostas[25]){
          respostas_MT[contadorAux,25]<-1
        }
        
        if(gabarito_MT[26]==vet_respostas[26]){
          respostas_MT[contadorAux,26]<-1
        }
        
        if(gabarito_MT[27]==vet_respostas[27]){
          respostas_MT[contadorAux,27]<-1
        }
        
        if(gabarito_MT[28]==vet_respostas[28]){
          respostas_MT[contadorAux,28]<-1
        }
        
        if(gabarito_MT[29]==vet_respostas[29]){
          respostas_MT[contadorAux,29]<-1
        }
        
        if(gabarito_MT[30]==vet_respostas[30]){
          respostas_MT[contadorAux,30]<-1
        }
        
        if(gabarito_MT[31]==vet_respostas[31]){
          respostas_MT[contadorAux,31]<-1
        }
        
        if(gabarito_MT[32]==vet_respostas[32]){
          respostas_MT[contadorAux,32]<-1
        }
        
        if(gabarito_MT[33]==vet_respostas[33]){
          respostas_MT[contadorAux,33]<-1
        }
        
        if(gabarito_MT[34]==vet_respostas[34]){
          respostas_MT[contadorAux,34]<-1
        }
        
        if(gabarito_MT[35]==vet_respostas[35]){
          respostas_MT[contadorAux,35]<-1
        }
        
        if(gabarito_MT[36]==vet_respostas[36]){
          respostas_MT[contadorAux,36]<-1
        }
        
        if(gabarito_MT[37]==vet_respostas[37]){
          respostas_MT[contadorAux,37]<-1
        }
        
        if(gabarito_MT[38]==vet_respostas[38]){
          respostas_MT[contadorAux,38]<-1
        }
        
        if(gabarito_MT[39]==vet_respostas[39]){
          respostas_MT[contadorAux,39]<-1
        }
        
        if(gabarito_MT[40]==vet_respostas[40]){
          respostas_MT[contadorAux,40]<-1
        }
        
        if(gabarito_MT[41]==vet_respostas[41]){
          respostas_MT[contadorAux,41]<-1
        }
        
        if(gabarito_MT[42]==vet_respostas[42]){
          respostas_MT[contadorAux,42]<-1
        }
        
        if(gabarito_MT[43]==vet_respostas[43]){
          respostas_MT[contadorAux,43]<-1
        }
        
        if(gabarito_MT[44]==vet_respostas[44]){
          respostas_MT[contadorAux,44]<-1
        }
        
        if(gabarito_MT[45]==vet_respostas[45]){
          respostas_MT[contadorAux,45]<-1
        } 
      }

      if(dados[i,6]==129){ #prova amarela
        if(gabarito_MT[1]==vet_respostas[136-135]){
          respostas_MT[contadorAux,1]<-1
        }
        
        if(gabarito_MT[2]==vet_respostas[138-135]){
          respostas_MT[contadorAux,2]<-1
        }
        
        if(gabarito_MT[3]==vet_respostas[137-135]){
          respostas_MT[contadorAux,3]<-1
        }
        
        if(gabarito_MT[4]==vet_respostas[139-135]){
          respostas_MT[contadorAux,4]<-1
        }
        
        if(gabarito_MT[5]==vet_respostas[143-135]){
          respostas_MT[contadorAux,5]<-1
        }
        
        if(gabarito_MT[6]==vet_respostas[141-135]){
          respostas_MT[contadorAux,6]<-1
        }
        
        if(gabarito_MT[7]==vet_respostas[142-135]){
          respostas_MT[contadorAux,7]<-1
        }
        
        if(gabarito_MT[8]==vet_respostas[140-135]){
          respostas_MT[contadorAux,8]<-1
        }
        
        if(gabarito_MT[9]==vet_respostas[144-135]){
          respostas_MT[contadorAux,9]<-1
        }
        
        if(gabarito_MT[10]==vet_respostas[145-135]){
          respostas_MT[contadorAux,10]<-1
        }
        
        if(gabarito_MT[11]==vet_respostas[146-135]){
          respostas_MT[contadorAux,11]<-1
        }
        
        if(gabarito_MT[12]==vet_respostas[156-135]){
          respostas_MT[contadorAux,12]<-1
        }
        
        if(gabarito_MT[13]==vet_respostas[148-135]){
          respostas_MT[contadorAux,13]<-1
        }
        
        if(gabarito_MT[14]==vet_respostas[149-135]){
          respostas_MT[contadorAux,14]<-1
        }
        
        if(gabarito_MT[15]==vet_respostas[150-135]){
          respostas_MT[contadorAux,15]<-1
        }
        
        if(gabarito_MT[16]==vet_respostas[151-135]){
          respostas_MT[contadorAux,16]<-1
        }
        
        if(gabarito_MT[17]==vet_respostas[161-135]){
          respostas_MT[contadorAux,17]<-1
        }
        
        if(gabarito_MT[18]==vet_respostas[162-135]){
          respostas_MT[contadorAux,18]<-1
        }
        
        if(gabarito_MT[19]==vet_respostas[154-135]){
          respostas_MT[contadorAux,19]<-1
        }
        
        if(gabarito_MT[20]==vet_respostas[155-135]){
          respostas_MT[contadorAux,20]<-1
        }
        
        if(gabarito_MT[21]==vet_respostas[147-135]){
          respostas_MT[contadorAux,21]<-1
        }
        
        if(gabarito_MT[22]==vet_respostas[157-135]){
          respostas_MT[contadorAux,22]<-1
        }
        
        if(gabarito_MT[23]==vet_respostas[158-135]){
          respostas_MT[contadorAux,23]<-1
        }
        
        if(gabarito_MT[24]==vet_respostas[159-135]){
          respostas_MT[contadorAux,24]<-1
        }
        
        if(gabarito_MT[25]==vet_respostas[160-135]){
          respostas_MT[contadorAux,25]<-1
        }
        
        if(gabarito_MT[26]==vet_respostas[152-135]){
          respostas_MT[contadorAux,26]<-1
        }
        
        if(gabarito_MT[27]==vet_respostas[153-135]){
          respostas_MT[contadorAux,27]<-1
        }
        
        if(gabarito_MT[28]==vet_respostas[165-135]){
          respostas_MT[contadorAux,28]<-1
        }
        
        if(gabarito_MT[29]==vet_respostas[164-135]){
          respostas_MT[contadorAux,29]<-1
        }
        
        if(gabarito_MT[30]==vet_respostas[163-135]){
          respostas_MT[contadorAux,30]<-1
        }
        
        if(gabarito_MT[31]==vet_respostas[166-135]){
          respostas_MT[contadorAux,31]<-1
        }
        
        if(gabarito_MT[32]==vet_respostas[167-135]){
          respostas_MT[contadorAux,32]<-1
        }
        
        if(gabarito_MT[33]==vet_respostas[168-135]){
          respostas_MT[contadorAux,33]<-1
        }
        
        if(gabarito_MT[34]==vet_respostas[169-135]){
          respostas_MT[contadorAux,34]<-1
        }
        
        if(gabarito_MT[35]==vet_respostas[171-135]){
          respostas_MT[contadorAux,35]<-1
        }
        
        if(gabarito_MT[36]==vet_respostas[170-135]){
          respostas_MT[contadorAux,36]<-1
        }
        
        if(gabarito_MT[37]==vet_respostas[172-135]){
          respostas_MT[contadorAux,37]<-1
        }
        
        if(gabarito_MT[38]==vet_respostas[174-135]){
          respostas_MT[contadorAux,38]<-1
        }
        
        if(gabarito_MT[39]==vet_respostas[173-135]){
          respostas_MT[contadorAux,39]<-1
        }
        
        if(gabarito_MT[40]==vet_respostas[175-135]){
          respostas_MT[contadorAux,40]<-1
        }
        
        if(gabarito_MT[41]==vet_respostas[176-135]){
          respostas_MT[contadorAux,41]<-1
        }
        
        if(gabarito_MT[42]==vet_respostas[177-135]){
          respostas_MT[contadorAux,42]<-1
        }
        
        if(gabarito_MT[43]==vet_respostas[179-135]){
          respostas_MT[contadorAux,43]<-1
        }
        
        if(gabarito_MT[44]==vet_respostas[178-135]){
          respostas_MT[contadorAux,44]<-1
        }
        
        if(gabarito_MT[45]==vet_respostas[180-135]){
          respostas_MT[contadorAux,45]<-1
        } 
      }
      
      if(dados[i,6]==98 || 114){ #prova cinza
        if(gabarito_MT[1]==vet_respostas[136-135]){
          respostas_MT[contadorAux,1]<-1
        }
        
        if(gabarito_MT[2]==vet_respostas[138-135]){
          respostas_MT[contadorAux,2]<-1
        }
        
        if(gabarito_MT[3]==vet_respostas[137-135]){
          respostas_MT[contadorAux,3]<-1
        }
        
        if(gabarito_MT[4]==vet_respostas[139-135]){
          respostas_MT[contadorAux,4]<-1
        }
        
        if(gabarito_MT[5]==vet_respostas[144-135]){
          respostas_MT[contadorAux,5]<-1
        }
        
        if(gabarito_MT[6]==vet_respostas[140-135]){
          respostas_MT[contadorAux,6]<-1
        }
        
        if(gabarito_MT[7]==vet_respostas[142-135]){
          respostas_MT[contadorAux,7]<-1
        }
        
        if(gabarito_MT[8]==vet_respostas[141-135]){
          respostas_MT[contadorAux,8]<-1
        }
        
        if(gabarito_MT[9]==vet_respostas[143-135]){
          respostas_MT[contadorAux,9]<-1
        }
        
        if(gabarito_MT[10]==vet_respostas[145-135]){
          respostas_MT[contadorAux,10]<-1
        }
        
        if(gabarito_MT[11]==vet_respostas[146-135]){
          respostas_MT[contadorAux,11]<-1
        }
        
        if(gabarito_MT[12]==vet_respostas[155-135]){
          respostas_MT[contadorAux,12]<-1
        }
        
        if(gabarito_MT[13]==vet_respostas[148-135]){
          respostas_MT[contadorAux,13]<-1
        }
        
        if(gabarito_MT[14]==vet_respostas[149-135]){
          respostas_MT[contadorAux,14]<-1
        }
        
        if(gabarito_MT[15]==vet_respostas[150-135]){
          respostas_MT[contadorAux,15]<-1
        }
        
        if(gabarito_MT[16]==vet_respostas[151-135]){
          respostas_MT[contadorAux,16]<-1
        }
        
        if(gabarito_MT[17]==vet_respostas[161-135]){
          respostas_MT[contadorAux,17]<-1
        }
        
        if(gabarito_MT[18]==vet_respostas[153-135]){
          respostas_MT[contadorAux,18]<-1
        }
        
        if(gabarito_MT[19]==vet_respostas[154-135]){
          respostas_MT[contadorAux,19]<-1
        }
        
        if(gabarito_MT[20]==vet_respostas[156-135]){
          respostas_MT[contadorAux,20]<-1
        }
        
        if(gabarito_MT[21]==vet_respostas[147-135]){
          respostas_MT[contadorAux,21]<-1
        }
        
        if(gabarito_MT[22]==vet_respostas[157-135]){
          respostas_MT[contadorAux,22]<-1
        }
        
        if(gabarito_MT[23]==vet_respostas[158-135]){
          respostas_MT[contadorAux,23]<-1
        }
        
        if(gabarito_MT[24]==vet_respostas[152-135]){
          respostas_MT[contadorAux,24]<-1
        }
        
        if(gabarito_MT[25]==vet_respostas[160-135]){
          respostas_MT[contadorAux,25]<-1
        }
        
        if(gabarito_MT[26]==vet_respostas[159-135]){
          respostas_MT[contadorAux,26]<-1
        }
        
        if(gabarito_MT[27]==vet_respostas[162-135]){
          respostas_MT[contadorAux,27]<-1
        }
        
        if(gabarito_MT[28]==vet_respostas[165-135]){
          respostas_MT[contadorAux,28]<-1
        }
        
        if(gabarito_MT[29]==vet_respostas[163-135]){
          respostas_MT[contadorAux,29]<-1
        }
        
        if(gabarito_MT[30]==vet_respostas[164-135]){
          respostas_MT[contadorAux,30]<-1
        }
        
        if(gabarito_MT[31]==vet_respostas[166-135]){
          respostas_MT[contadorAux,31]<-1
        }
        
        if(gabarito_MT[32]==vet_respostas[168-135]){
          respostas_MT[contadorAux,32]<-1
        }
        
        if(gabarito_MT[33]==vet_respostas[167-135]){
          respostas_MT[contadorAux,33]<-1
        }
        
        if(gabarito_MT[34]==vet_respostas[169-135]){
          respostas_MT[contadorAux,34]<-1
        }
        
        if(gabarito_MT[35]==vet_respostas[171-135]){
          respostas_MT[contadorAux,35]<-1
        }
        
        if(gabarito_MT[36]==vet_respostas[170-135]){
          respostas_MT[contadorAux,36]<-1
        }
        
        if(gabarito_MT[37]==vet_respostas[172-135]){
          respostas_MT[contadorAux,37]<-1
        }
        
        if(gabarito_MT[38]==vet_respostas[173-135]){
          respostas_MT[contadorAux,38]<-1
        }
        
        if(gabarito_MT[39]==vet_respostas[174-135]){
          respostas_MT[contadorAux,39]<-1
        }
        
        if(gabarito_MT[40]==vet_respostas[175-135]){
          respostas_MT[contadorAux,40]<-1
        }
        
        if(gabarito_MT[41]==vet_respostas[178-135]){
          respostas_MT[contadorAux,41]<-1
        }
        
        if(gabarito_MT[42]==vet_respostas[177-135]){
          respostas_MT[contadorAux,42]<-1
        }
        
        if(gabarito_MT[43]==vet_respostas[179-135]){
          respostas_MT[contadorAux,43]<-1
        }
        
        if(gabarito_MT[44]==vet_respostas[176-135]){
          respostas_MT[contadorAux,44]<-1
        }
        
        if(gabarito_MT[45]==vet_respostas[180-135]){
          respostas_MT[contadorAux,45]<-1
        } 
      }
   
      if(dados[i,6]==100 || 116){ #prova rosa
        if(gabarito_MT[1]==vet_respostas[136-135]){
          respostas_MT[contadorAux,1]<-1
        }
        
        if(gabarito_MT[2]==vet_respostas[137-135]){
          respostas_MT[contadorAux,2]<-1
        }
        
        if(gabarito_MT[3]==vet_respostas[138-135]){
          respostas_MT[contadorAux,3]<-1
        }
        
        if(gabarito_MT[4]==vet_respostas[139-135]){
          respostas_MT[contadorAux,4]<-1
        }
        
        if(gabarito_MT[5]==vet_respostas[143-135]){
          respostas_MT[contadorAux,5]<-1
        }
        
        if(gabarito_MT[6]==vet_respostas[141-135]){
          respostas_MT[contadorAux,6]<-1
        }
        
        if(gabarito_MT[7]==vet_respostas[142-135]){
          respostas_MT[contadorAux,7]<-1
        }
        
        if(gabarito_MT[8]==vet_respostas[145-135]){
          respostas_MT[contadorAux,8]<-1
        }
        
        if(gabarito_MT[9]==vet_respostas[144-135]){
          respostas_MT[contadorAux,9]<-1
        }
        
        if(gabarito_MT[10]==vet_respostas[140-135]){
          respostas_MT[contadorAux,10]<-1
        }
        
        if(gabarito_MT[11]==vet_respostas[146-135]){
          respostas_MT[contadorAux,11]<-1
        }
        
        if(gabarito_MT[12]==vet_respostas[147-135]){
          respostas_MT[contadorAux,12]<-1
        }
        
        if(gabarito_MT[13]==vet_respostas[148-135]){
          respostas_MT[contadorAux,13]<-1
        }
        
        if(gabarito_MT[14]==vet_respostas[149-135]){
          respostas_MT[contadorAux,14]<-1
        }
        
        if(gabarito_MT[15]==vet_respostas[150-135]){
          respostas_MT[contadorAux,15]<-1
        }
        
        if(gabarito_MT[16]==vet_respostas[151-135]){
          respostas_MT[contadorAux,16]<-1
        }
        
        if(gabarito_MT[17]==vet_respostas[152-135]){
          respostas_MT[contadorAux,17]<-1
        }
        
        if(gabarito_MT[18]==vet_respostas[162-135]){
          respostas_MT[contadorAux,18]<-1
        }
        
        if(gabarito_MT[19]==vet_respostas[154-135]){
          respostas_MT[contadorAux,19]<-1
        }
        
        if(gabarito_MT[20]==vet_respostas[155-135]){
          respostas_MT[contadorAux,20]<-1
        }
        
        if(gabarito_MT[21]==vet_respostas[156-135]){
          respostas_MT[contadorAux,21]<-1
        }
        
        if(gabarito_MT[22]==vet_respostas[157-135]){
          respostas_MT[contadorAux,22]<-1
        }
        
        if(gabarito_MT[23]==vet_respostas[158-135]){
          respostas_MT[contadorAux,23]<-1
        }
        
        if(gabarito_MT[24]==vet_respostas[159-135]){
          respostas_MT[contadorAux,24]<-1
        }
        
        if(gabarito_MT[25]==vet_respostas[160-135]){
          respostas_MT[contadorAux,25]<-1
        }
        
        if(gabarito_MT[26]==vet_respostas[161-135]){
          respostas_MT[contadorAux,26]<-1
        }
        
        if(gabarito_MT[27]==vet_respostas[153-135]){
          respostas_MT[contadorAux,27]<-1
        }
        
        if(gabarito_MT[28]==vet_respostas[164-135]){
          respostas_MT[contadorAux,28]<-1
        }
        
        if(gabarito_MT[29]==vet_respostas[165-135]){
          respostas_MT[contadorAux,29]<-1
        }
        
        if(gabarito_MT[30]==vet_respostas[163-135]){
          respostas_MT[contadorAux,30]<-1
        }
        
        if(gabarito_MT[31]==vet_respostas[166-135]){
          respostas_MT[contadorAux,31]<-1
        }
        
        if(gabarito_MT[32]==vet_respostas[168-135]){
          respostas_MT[contadorAux,32]<-1
        }
        
        if(gabarito_MT[33]==vet_respostas[167-135]){
          respostas_MT[contadorAux,33]<-1
        }
        
        if(gabarito_MT[34]==vet_respostas[169-135]){
          respostas_MT[contadorAux,34]<-1
        }
        
        if(gabarito_MT[35]==vet_respostas[170-135]){
          respostas_MT[contadorAux,35]<-1
        }
        
        if(gabarito_MT[36]==vet_respostas[171-135]){
          respostas_MT[contadorAux,36]<-1
        }
        
        if(gabarito_MT[37]==vet_respostas[172-135]){
          respostas_MT[contadorAux,37]<-1
        }
        
        if(gabarito_MT[38]==vet_respostas[174-135]){
          respostas_MT[contadorAux,38]<-1
        }
        
        if(gabarito_MT[39]==vet_respostas[173-135]){
          respostas_MT[contadorAux,39]<-1
        }
        
        if(gabarito_MT[40]==vet_respostas[175-135]){
          respostas_MT[contadorAux,40]<-1
        }
        
        if(gabarito_MT[41]==vet_respostas[176-135]){
          respostas_MT[contadorAux,41]<-1
        }
        
        if(gabarito_MT[42]==vet_respostas[177-135]){
          respostas_MT[contadorAux,42]<-1
        }
        
        if(gabarito_MT[43]==vet_respostas[178-135]){
          respostas_MT[contadorAux,43]<-1
        }
        
        if(gabarito_MT[44]==vet_respostas[179-135]){
          respostas_MT[contadorAux,44]<-1
        }
        
        if(gabarito_MT[45]==vet_respostas[180-135]){
          respostas_MT[contadorAux,45]<-1
        } 
      }
    
    resposta <- NULL
  }


write.csv(respostas_MT, file = "respostas_zeros_e_uns50k_MT.csv")








