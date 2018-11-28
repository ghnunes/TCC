rm(list=ls())
gc()

library(mirt)
library(stringr)

library(rgl)
#carregando as respostas dos participantes
respostas <- read.csv("respostas_zeros_e_uns50k_MT.csv", sep=",")
respostas$X<-NULL

mod3 <-mirt(respostas, 1, itemtype = '3PL')
mod3<- coef(mod3,simplify=TRUE, IRTpars=TRUE)
mod50k<-mod3$items
#coef(mod3,simplify=TRUE, IRTpars=TRUE)


write.csv(mod50k, file = "tri_50k_SEM_normalizar_MT.csv")


padroniza <- function(s)
{
  retorno <- (s - min(s))/(max(s)-min(s))
  return(retorno)
}


tri50_normalizado <-cbind(padroniza(mod50k[,1]),padroniza(mod50k[,2]),padroniza(mod50k[,3]))

write.csv(tri50_normalizado, file = "tri_50k_NORMALIZADO_MT.csv")


####################################################################

tri30<-cbind(padroniza(tri30$a),padroniza(tri30$b),padroniza(tri30$g))

mean(tri30[,3])
mean(tri40[,3])
mean(tri50[,3])

mean(tri30[,2])
mean(tri40[,2])
mean(tri50[,2])

mean(tri30[,4])
mean(tri40[,4])
mean(tri50[,4])


sd(tri30[,3])
sd(tri40[,3])
sd(tri50[,3])


tri1 <- read.csv("tri_30k.csv", sep=",")
tri2 <- read.csv("tri_40k.csv", sep=",")
tri3 <- read.csv("tri_50k.csv", sep=",")
plot3d(tri[,2:4], size=8, col=2)
boxplot(tri)

modelo<-kmeans(tri30,3)
plot3d(tri30,size=8, col=modelo$cluster)
