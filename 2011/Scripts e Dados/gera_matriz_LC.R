rm(list=ls())

library(compiler)

enableJIT(3)
library(stringr)
library(microbenchmark)

dados <-read.csv("amostra_enem2011_50k.csv")
dados$X <- NULL

contadorAux <-0

respostas_LC <- matrix(0, nrow=50000, ncol = 40)
#dentro do vet respostas vai ter que ter as 50 resp
gabarito_azul_LC <- c("5","5","5","5","5","E","D","E","C","D","A","D","D","C","A","A","B","B","E","D","A","C","B","A","D","E","C","C","E","A","B","D","A","E","B","C","D","C","B","A","B","C","E","A","E")
respostas_candidato <- c(180)
vet_respostas <- c(45)
resposta = ""
#nrow(dados) 
  for(i in 1:nrow(dados)){ 
    
      rm(resposta)
      contadorAux <- contadorAux + 1
      print(contadorAux)
      resposta<-dados[i,2]
      for(k in 1:180){
        respostas_candidato[k]<-str_sub(resposta,k,k)
      }
      for(k in 1:45){
        vet_respostas[k]<-respostas_candidato[k+90]
      }
    
      if(dados[i,5]==127){ #prova 
        #Começo da posição 6, porque as 5 primeiras são de inglês ou espanhol. D
        if(gabarito_azul_LC[6]==vet_respostas[6]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[7]==vet_respostas[7]){
          respostas_LC[contadorAux,2]<-1 
        }
        
        if(gabarito_azul_LC[8]==vet_respostas[8]){
          respostas_LC[contadorAux,3]<-1
        } 
        if(gabarito_azul_LC[9]==vet_respostas[9]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[10]==vet_respostas[10]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[11]==vet_respostas[11]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[12]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[13]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[14]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[15]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[16]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[17]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[18]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[19]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[20]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[21]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[22]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[23]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[24]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[25]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[26]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[27]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[28]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[29]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[30]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[31]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[32]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[33]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[34]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[35]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[36]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[37]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[38]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[39]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[40]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[41]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[42]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[43]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[44]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[45]){
          respostas_LC[contadorAux,40]<-1
        }
      }
      
     
      if(dados[i,5]==125){ #prova amarela
        #Começo da posição 6, porque as 5 primeiras são de inglês ou espanhol.
        if(gabarito_azul_LC[6]==vet_respostas[96-90]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[7]==vet_respostas[97-90]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[8]==vet_respostas[103-90]){
          respostas_LC[contadorAux,3]<-1
        } 
        if(gabarito_azul_LC[9]==vet_respostas[101-90]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[10]==vet_respostas[102-90]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[11]==vet_respostas[100-90]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[98-90]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[99-90]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[107-90]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[108-90]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[109-90]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[104-90]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[105-90]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[106-90]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[111-90]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[112-90]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[110-90]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[113-90]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[114-90]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[115-90]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[121-90]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[119-90]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[120-90]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[118-90]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[117-90]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[116-90]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[123-90]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[122-90]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[126-90]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[127-90]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[125-90]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[124-90]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[131-90]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[132-90]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[130-90]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[129-90]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[128-90]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[134-90]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[133-90]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[135-90]){
          respostas_LC[contadorAux,40]<-1
        }
      }
      
      if(dados[i,5]==126 || 135){ #prova cinza
        #Começo da posição 6, porque as 5 primeiras são de inglês ou espanhol.
        if(gabarito_azul_LC[6]==vet_respostas[97-90]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[7]==vet_respostas[96-90]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[8]==vet_respostas[100-90]){
          respostas_LC[contadorAux,3]<-1
        } 
        if(gabarito_azul_LC[9]==vet_respostas[99-90]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[10]==vet_respostas[98-90]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[11]==vet_respostas[103-90]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[101-90]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[102-90]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[106-90]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[104-90]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[105-90]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[109-90]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[107-90]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[108-90]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[113-90]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[114-90]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[115-90]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[110-90]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[111-90]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[112-90]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[117-90]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[116-90]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[118-90]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[121-90]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[120-90]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[119-90]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[126-90]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[125-90]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[127-90]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[124-90]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[123-90]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[122-90]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[129-90]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[131-90]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[128-90]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[130-90]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[132-90]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[135-90]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[134-90]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[133-90]){
          respostas_LC[contadorAux,40]<-1
        }
      }
      
      if(dados[i,5]==128){ #prova rosa

        #Começo da posição 6, porque as 5 primeiras são de inglês ou espanhol.
        if(gabarito_azul_LC[6]==vet_respostas[97-90]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[7]==vet_respostas[96-90]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[8]==vet_respostas[102-90]){
          respostas_LC[contadorAux,3]<-1
        } 
        if(gabarito_azul_LC[9]==vet_respostas[103-90]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[10]==vet_respostas[101-90]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[11]==vet_respostas[98-90]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[100-90]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[99-90]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[106-90]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[107-90]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[108-90]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[109-90]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[104-90]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[105-90]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[113-90]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[114-90]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[110-90]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[115-90]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[112-90]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[111-90]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[118-90]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[117-90]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[116-90]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[120-90]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[121-90]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[119-90]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[126-90]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[127-90]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[125-90]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[123-90]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[122-90]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[124-90]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[128-90]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[129-90]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[130-90]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[132-90]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[131-90]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[134-90]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[135-90]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[133-90]){
          respostas_LC[contadorAux,40]<-1
        }
      }
    
    resposta <- NULL
  }

write.csv(respostas_LC, file = "respostas_zeros_e_uns50k_LC.csv")





