rm(list=ls())
library(rgl)

CN_2015 <- read.csv("tri_50k_SEM_normalizar_CN_2015.csv", sep=",")
CN_2015$X<-NULL
CN_2015<-CN_2015[,-4]

CN_2014 <- read.csv("tri_50k_SEM_normalizar_CN_2014.csv", sep=",")
CN_2014$X<-NULL
CN_2014<-CN_2014[,-4]

CN_2013 <- read.csv("tri_50k_SEM_normalizar_CN_2013.csv", sep=",")
CN_2013$X<-NULL
CN_2013<-CN_2013[,-4]

CN_2012 <- read.csv("tri_50k_SEM_normalizar_CN_2012.csv", sep=",")
CN_2012$X<-NULL
CN_2012<-CN_2012[,-4]

CN_2011 <- read.csv("tri_50k_SEM_normalizar_CN_2011.csv", sep=",")
CN_2011$X<-NULL
CN_2011<-CN_2011[,-4]

CN_2010 <- read.csv("tri_50k_SEM_normalizar_CN_2010.csv", sep=",")
CN_2010$X<-NULL
CN_2010<-CN_2010[,-4]

CN_2009 <- read.csv("tri_50k_SEM_normalizar_CN_2009.csv", sep=",")
CN_2009$X<-NULL
CN_2009<-CN_2009[,-4]


total <- rbind(CN_2015,CN_2014)
total <- rbind(total, CN_2013)
total <- rbind(total, CN_2012)
total <- rbind(total, CN_2011)
total <- rbind(total, CN_2010)
total <- rbind(total, CN_2009)

padroniza <- function(s)
{
  retorno <- (s - min(s))/(max(s)-min(s))
  return(retorno)
}
tri_normalizado <-cbind(padroniza(total[,1]),padroniza(total[,2]),padroniza(total[,3]))
nomes_colunas <- c("a","b","c")
colnames(tri_normalizado) <- nomes_colunas

modelo<-kmeans(tri_normalizado,3)

classificacoes <- modelo$cluster;

questoes_classificadas <- cbind(tri_normalizado, classificacoes)

plot3d(tri_normalizado,size=8, col=modelo$cluster)

write.csv(questoes_classificadas, file = "questoes_CN_classificadas.csv")
