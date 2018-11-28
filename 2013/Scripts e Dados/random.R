library(ff)
dados <- read.csv.ffdf(file="dados_2013.csv", sep=",", header=T, VERBOSE=T, next.rows=500000, colClasses=NA)
dados$X <- NULL





valor_minConvergencia <- 50000
nrespondentes <-dim(dados)[1]
ind_sorteados<-sample(size = valor_minConvergencia, seq(from=1, to=nrespondentes))

dados_respondentes <- dados[ind_sorteados,]
original<-dados[ind_sorteados,]
i = 1
alteracoes = FALSE
while( i < valor_minConvergencia){
  
  repeat{
    
    verifica_duplicado <- length(which(ind_sorteados == ind_sorteados[i]))
    
    if((dados_respondentes[i,1]==0) || (dados_respondentes[i,2]==0) || (dados_respondentes[i,3]==0) || (dados_respondentes[i,4]==0) || (verifica_duplicado>1) || (is.na(dados_respondentes[i,1])) || (is.na(dados_respondentes[i,2])) || (is.na(dados_respondentes[i,3])) || (is.na(dados_respondentes[i,4]))){
      #print("entrou1")
      substituto<-sample(size = 1, seq(from=1, to=nrespondentes))
      verifica_duplicado <- length(which(ind_sorteados == substituto))
      alteracoes = TRUE
    }else{
      i = i + 1
      #print("entrou2")
      break()
    }
    
    if(alteracoes){ 
      if((dados[substituto,1]==1) & (dados[substituto,2]==1) & (dados[substituto,3]==1) & (dados[substituto,4]==1) & (verifica_duplicado==0)){
        #print("entrou")
        dados_respondentes[i,]<-dados[substituto,]
        alteracoes = FALSE
        i = i + 1
        break()
      }
    }
    
    print(i)
    
    
  }
}

write.csv(dados_respondentes,file="amostra_enem2013_50k.csv")


