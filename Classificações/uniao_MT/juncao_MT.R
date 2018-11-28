rm(list=ls())
library(rgl)

MT_2015 <- read.csv("tri_50k_SEM_normalizar_MT_2015.csv", sep=",")
MT_2015$X<-NULL
MT_2015<-MT_2015[,-4]

MT_2014 <- read.csv("tri_50k_SEM_normalizar_MT_2014.csv", sep=",")
MT_2014$X<-NULL
MT_2014<-MT_2014[,-4]

MT_2013 <- read.csv("tri_50k_SEM_normalizar_MT_2013.csv", sep=",")
MT_2013$X<-NULL
MT_2013<-MT_2013[,-4]

MT_2012 <- read.csv("tri_50k_SEM_normalizar_MT_2012.csv", sep=",")
MT_2012$X<-NULL
MT_2012<-MT_2012[,-4]

MT_2011 <- read.csv("tri_50k_SEM_normalizar_MT_2011.csv", sep=",")
MT_2011$X<-NULL
MT_2011<-MT_2011[,-4]

MT_2010 <- read.csv("tri_50k_SEM_normalizar_MT_2010.csv", sep=",")
MT_2010$X<-NULL
MT_2010<-MT_2010[,-4]

MT_2009 <- read.csv("tri_50k_SEM_normalizar_MT_2009.csv", sep=",")
MT_2009$X<-NULL
MT_2009<-MT_2009[,-4]


total <- rbind(MT_2015,MT_2014)
total <- rbind(total, MT_2013)
total <- rbind(total, MT_2012)
total <- rbind(total, MT_2011)
total <- rbind(total, MT_2010)
total <- rbind(total, MT_2009)

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

write.csv(questoes_classificadas, file = "questoes_MT_classificadas.csv")
