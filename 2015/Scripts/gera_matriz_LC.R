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

respostas_LC <- matrix(0, nrow=50000, ncol = 40)
#dentro do vet respostas vai ter que ter as 50 resp
vet_respostas <- c("5","5","5","5","5","5","5","5","5","5","A","B","C","A","D","A","C","D","E","A","A","B","C","A","D","A","C","D","E","A","A","B","C","A","D","A","C","D","E","A","A","C","D","E","A","E","E","E","C","A")
gabarito_azul_LC <- c("5","5","5","5","5","5","5","5","5","5","E","B","D","A","B","B","B","E","D","E","E","B","A","B","D","C","D","A","D","B","B","E","B","D","C","D","A","E","C","C","E","A","B","D","C","E","C","E","C","C")


  for(i in 1:nrow(dados)){
    
      rm(resposta)
      contadorAux <- contadorAux + 1
      print(contadorAux)
      resposta<-dados[i,7]
      for(k in 1:50){
        vet_respostas[k]<-str_sub(resposta,k,k)
      }
      if(dados[i,3]==241){ #prova azul
        #Começo da posição 6, porque as 5 primeiras são de inglês ou espanhol.
        
        if(gabarito_azul_LC[11]==vet_respostas[11]){
          respostas_LC[contadorAux,1]<-1
        } 
        
        if(gabarito_azul_LC[12]==vet_respostas[12]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[13]){
          respostas_LC[contadorAux,3]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[14]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[15]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[16]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[17]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[18]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[19]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[20]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[21]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[22]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[23]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[24]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[25]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[26]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[27]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[28]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[29]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[30]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[31]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[32]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[33]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[34]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[35]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[36]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[37]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[38]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[39]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[40]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[41]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[42]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[43]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[44]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[45]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[46]==vet_respostas[46]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[47]==vet_respostas[47]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[48]==vet_respostas[48]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[49]==vet_respostas[49]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[50]==vet_respostas[50]){
          respostas_LC[contadorAux,40]<-1
        } 
      }
      
      if(dados[i,3]==240){ #prova cinza 
        
        if(gabarito_azul_LC[11]==vet_respostas[97-85]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[96-85]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[98-85]){
          respostas_LC[contadorAux,3]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[102-85]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[103-85]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[104-85]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[134-85]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[135-85]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[112-85]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[113-85]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[114-85]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[118-85]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[119-85]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[120-85]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[121-85]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[122-85]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[123-85]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[124-85]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[128-85]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[129-85]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[125-85]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[126-85]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[127-85]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[109-85]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[110-85]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[111-85]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[105-85]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[106-85]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[107-85]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[108-85]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[115-85]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[116-85]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[117-85]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[99-85]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[100-85]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[46]==vet_respostas[101-85]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[47]==vet_respostas[130-85]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[48]==vet_respostas[131-85]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[49]==vet_respostas[132-85]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[50]==vet_respostas[133-85]){
          respostas_LC[contadorAux,40]<-1
        } 
      }
      
      if(dados[i,3]==239){ #prova amarela
       
        
        if(gabarito_azul_LC[11]==vet_respostas[98-85]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[96-85]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[97-85]){
          respostas_LC[contadorAux,3]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[130-85]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[131-85]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[132-85]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[99-85]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[100-85]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[120-85]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[121-85]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[122-85]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[113-85]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[114-85]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[115-85]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[116-85]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[117-85]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[118-85]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[119-85]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[105-85]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[106-85]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[107-85]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[108-85]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[109-85]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[123-85]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[124-85]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[125-85]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[126-85]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[127-85]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[128-85]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[129-85]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[110-85]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[111-85]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[112-85]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[133-85]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[134-85]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[46]==vet_respostas[135-85]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[47]==vet_respostas[101-85]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[48]==vet_respostas[102-85]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[49]==vet_respostas[103-85]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[50]==vet_respostas[104-85]){
          respostas_LC[contadorAux,40]<-1
        } 
      }
      
      if(dados[i,3]==242){ #prova rosa
        
        
        if(gabarito_azul_LC[11]==vet_respostas[98-85]){
          respostas_LC[contadorAux,1]<-1
        }
        
        if(gabarito_azul_LC[12]==vet_respostas[96-85]){
          respostas_LC[contadorAux,2]<-1
        }
        
        if(gabarito_azul_LC[13]==vet_respostas[97-85]){
          respostas_LC[contadorAux,3]<-1
        }
        
        if(gabarito_azul_LC[14]==vet_respostas[133-85]){
          respostas_LC[contadorAux,4]<-1
        }
        
        if(gabarito_azul_LC[15]==vet_respostas[134-85]){
          respostas_LC[contadorAux,5]<-1
        }
        
        if(gabarito_azul_LC[16]==vet_respostas[135-85]){
          respostas_LC[contadorAux,6]<-1
        }
        
        if(gabarito_azul_LC[17]==vet_respostas[131-85]){
          respostas_LC[contadorAux,7]<-1
        }
        
        if(gabarito_azul_LC[18]==vet_respostas[132-85]){
          respostas_LC[contadorAux,8]<-1
        }
        
        if(gabarito_azul_LC[19]==vet_respostas[128-85]){
          respostas_LC[contadorAux,9]<-1
        }
        
        if(gabarito_azul_LC[20]==vet_respostas[129-85]){
          respostas_LC[contadorAux,10]<-1
        }
        
        if(gabarito_azul_LC[21]==vet_respostas[130-85]){
          respostas_LC[contadorAux,11]<-1
        }
        
        if(gabarito_azul_LC[22]==vet_respostas[125-85]){
          respostas_LC[contadorAux,12]<-1
        }
        
        if(gabarito_azul_LC[23]==vet_respostas[109-85]){
          respostas_LC[contadorAux,13]<-1
        }
        
        if(gabarito_azul_LC[24]==vet_respostas[110-85]){
          respostas_LC[contadorAux,14]<-1
        }
        
        if(gabarito_azul_LC[25]==vet_respostas[107-85]){
          respostas_LC[contadorAux,15]<-1
        }
        
        if(gabarito_azul_LC[26]==vet_respostas[108-85]){
          respostas_LC[contadorAux,16]<-1
        }
        
        if(gabarito_azul_LC[27]==vet_respostas[109-85]){
          respostas_LC[contadorAux,17]<-1
        }
        
        if(gabarito_azul_LC[28]==vet_respostas[110-85]){
          respostas_LC[contadorAux,18]<-1
        }
        
        if(gabarito_azul_LC[29]==vet_respostas[99-85]){
          respostas_LC[contadorAux,19]<-1
        }
        
        if(gabarito_azul_LC[30]==vet_respostas[100-85]){
          respostas_LC[contadorAux,20]<-1
        }
        
        if(gabarito_azul_LC[31]==vet_respostas[111-85]){
          respostas_LC[contadorAux,21]<-1
        }
        
        if(gabarito_azul_LC[32]==vet_respostas[112-85]){
          respostas_LC[contadorAux,22]<-1
        }
        
        if(gabarito_azul_LC[33]==vet_respostas[113-85]){
          respostas_LC[contadorAux,23]<-1
        }
        
        if(gabarito_azul_LC[34]==vet_respostas[101-85]){
          respostas_LC[contadorAux,24]<-1
        }
        
        if(gabarito_azul_LC[35]==vet_respostas[102-85]){
          respostas_LC[contadorAux,25]<-1
        }
        
        if(gabarito_azul_LC[36]==vet_respostas[103-85]){
          respostas_LC[contadorAux,26]<-1
        }
        
        if(gabarito_azul_LC[37]==vet_respostas[114-85]){
          respostas_LC[contadorAux,27]<-1
        }
        
        if(gabarito_azul_LC[38]==vet_respostas[115-85]){
          respostas_LC[contadorAux,28]<-1
        }
        
        if(gabarito_azul_LC[39]==vet_respostas[116-85]){
          respostas_LC[contadorAux,29]<-1
        }
        
        if(gabarito_azul_LC[40]==vet_respostas[117-85]){
          respostas_LC[contadorAux,30]<-1
        }
        
        if(gabarito_azul_LC[41]==vet_respostas[118-85]){
          respostas_LC[contadorAux,31]<-1
        }
        
        if(gabarito_azul_LC[42]==vet_respostas[119-85]){
          respostas_LC[contadorAux,32]<-1
        }
        
        if(gabarito_azul_LC[43]==vet_respostas[120-85]){
          respostas_LC[contadorAux,33]<-1
        }
        
        if(gabarito_azul_LC[44]==vet_respostas[104-85]){
          respostas_LC[contadorAux,34]<-1
        }
        
        if(gabarito_azul_LC[45]==vet_respostas[105-85]){
          respostas_LC[contadorAux,35]<-1
        }
        
        if(gabarito_azul_LC[46]==vet_respostas[106-85]){
          respostas_LC[contadorAux,36]<-1
        }
        
        if(gabarito_azul_LC[47]==vet_respostas[121-85]){
          respostas_LC[contadorAux,37]<-1
        }
        
        if(gabarito_azul_LC[48]==vet_respostas[122-85]){
          respostas_LC[contadorAux,38]<-1
        }
        
        if(gabarito_azul_LC[49]==vet_respostas[123-85]){
          respostas_LC[contadorAux,39]<-1
        }
        
        if(gabarito_azul_LC[50]==vet_respostas[124-85]){
          respostas_LC[contadorAux,40]<-1
        } 
      }
    
    resposta <- NULL
  }

write.csv(respostas_LC, file = "respostas_zeros_e_uns50k_LC.csv")










