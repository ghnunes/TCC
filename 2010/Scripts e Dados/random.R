rm(list=ls())
library(ff)
library(compiler)
enableJIT(3)
library(stringr)
library(microbenchmark)
library(progress)
vet_presenca <- c(6)

dados <- read.csv.ffdf(file='DADOS_ENEM_2010_FORMATADO.csv', header=F, sep=';', VERBOSE=T, next.rows=500000, colClasses=NA)
dados$X <- NULL



valor_minConvergencia <- 50000
nrespondentes <-dim(dados)[1]
ind_sorteados<-sample(size = valor_minConvergencia, seq(from=1, to=nrespondentes))

dados_respondentes <- dados[ind_sorteados,]
i = 1
alteracoes = FALSE
pb <- progress_bar$new( 
  format= "downloading [:bar] :percent eta: :eta", total = valor_minConvergencia, clear = FALSE, width=60
  )
while( i < valor_minConvergencia){
  
  repeat{
    
    verifica_duplicado <- length(which(ind_sorteados == ind_sorteados[i]))
    
    presenca <- dados_respondentes[i,1]
    
    for(k in 1:6){
      vet_presenca[k]<-str_sub(presenca,k,k)
    }
    vet_presenca <- vet_presenca[3:6]
    
    if((vet_presenca[1]==0) || (vet_presenca[2]==0) || (vet_presenca[3]==0) || (vet_presenca[4]==0) || (verifica_duplicado>1) || (vet_presenca[1]==2) || (vet_presenca[2]==2) || (vet_presenca[3]==2) || (vet_presenca[4]==2)){
      substituto<-sample(size = 1, seq(from=1, to=nrespondentes))
      verifica_duplicado <- length(which(ind_sorteados == substituto))
      alteracoes = TRUE
    }else{
      i = i + 1
      pb$tick()
      break()
    }
    
    if(alteracoes){
      
      presenca <- dados[substituto,1]
      
      for(k in 1:6){
        vet_presenca[k]<-str_sub(presenca,k,k)
      }
      vet_presenca <- vet_presenca[3:6]
      
      
      if((vet_presenca[1]==1) & (vet_presenca[2]==1) & (vet_presenca[3]==1) & (vet_presenca[4]==1) & (verifica_duplicado==0)){
        dados_respondentes[i,]<-dados[substituto,]
        alteracoes = FALSE
        i = i + 1
        pb$tick()
        
        break()
      }
    }
    
   
    
    
    
  }
}

write.csv(dados_respondentes,file="amostra_enem2010_50k.csv")

