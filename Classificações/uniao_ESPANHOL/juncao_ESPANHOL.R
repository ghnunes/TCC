rm(list=ls())
library(rgl)

LC_2015 <- read.csv("tri_50k_SEM_normalizar_ESPANHOL_2015.csv", sep=",")
LC_2015$X<-NULL
LC_2015<-LC_2015[,-4]

LC_2014 <- read.csv("tri_50k_SEM_normalizar_ESPANHOL_2014.csv", sep=",")
LC_2014$X<-NULL
LC_2014<-LC_2014[,-4]

LC_2013 <- read.csv("tri_50k_SEM_normalizar_ESPANHOL_2013.csv", sep=",")
LC_2013$X<-NULL
LC_2013<-LC_2014[,-4]

LC_2012 <- read.csv("tri_50k_SEM_normalizar_ESPANHOL_2012.csv", sep=",")
LC_2012$X<-NULL
LC_2012<-LC_2012[,-4]

LC_2011 <- read.csv("tri_50k_SEM_normalizar_ESPANHOL_2011.csv", sep=",")
LC_2011$X<-NULL
LC_2011<-LC_2011[,-4]

LC_2010 <- read.csv("tri_50k_SEM_normalizar_ESPANHOL_2010.csv", sep=",")
LC_2010$X<-NULL
LC_2010<-LC_2010[,-4]

total <- rbind(LC_2015,LC_2014)
total <- rbind(total, LC_2013)
total <- rbind(total, LC_2012)
total <- rbind(total, LC_2011)
total <- rbind(total, LC_2010)

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

write.csv(questoes_classificadas, file = "questoes_ESPANHOL_classificadas.csv")
