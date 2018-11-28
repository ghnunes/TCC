rm(list=ls())
library(rgl)

CH_2015 <- read.csv("tri_50k_SEM_normalizar_CH_2015.csv", sep=",")
CH_2015$X<-NULL
CH_2015<-CH_2015[,-4]

CH_2014 <- read.csv("tri_50k_SEM_normalizar_CH_2014.csv", sep=",")
CH_2014$X<-NULL
CH_2014<-CH_2014[,-4]

CH_2013 <- read.csv("tri_50k_SEM_normalizar_CH_2013.csv", sep=",")
CH_2013$X<-NULL
CH_2013<-CH_2013[,-4]

CH_2012 <- read.csv("tri_50k_SEM_normalizar_CH_2012.csv", sep=",")
CH_2012$X<-NULL
CH_2012<-CH_2012[,-4]

CH_2011 <- read.csv("tri_50k_SEM_normalizar_CH_2011.csv", sep=",")
CH_2011$X<-NULL
CH_2011<-CH_2011[,-4]

CH_2010 <- read.csv("tri_50k_SEM_normalizar_CH_2010.csv", sep=",")
CH_2010$X<-NULL
CH_2010<-CH_2010[,-4]

CH_2009 <- read.csv("tri_50k_SEM_normalizar_CH_2009.csv", sep=",")
CH_2009$X<-NULL
CH_2009<-CH_2009[,-4]


total <- rbind(CH_2015,CH_2014)
total <- rbind(total, CH_2013)
total <- rbind(total, CH_2012)
total <- rbind(total, CH_2011)
total <- rbind(total, CH_2010)
total <- rbind(total, CH_2009)

padroniza <- function(s)
{
  retorno <- (s - min(s))/(max(s)-min(s))
  return(retorno)
}
tri_normalizado <-cbind(padroniza(total[,1]),padroniza(total[,2]),padroniza(total[,3]))

modelo<-kmeans(tri_normalizado,3)

classificacoes <- modelo$cluster;

questoes_classificadas <- cbind(tri_normalizado, classificacoes)

plot3d(tri_normalizado,size=8, col=modelo$cluster)

write.csv(questoes_classificadas, file = "questoes_CH_classificadas.csv")
