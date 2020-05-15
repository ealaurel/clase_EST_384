rm(list = ls())
install.packages("explor")
install.packages("FactoMineR")
library(FactoMineR)
library(explor)
load(url("https://github.com/AlvaroLimber/EST-384/blob/master/data/endsa.RData?raw=true"))
warnings()
??FactorMineR
View(endsa)
names(endsa)
attributes(endsa)$var.labels
attributes(endsa)$label.table
#5=edad; 9=total años de educacion
#34=edad al primer naciomineto
#27=total de niños nacidos
sub_endsa<-endsa[,c(5,9,27,34)]
colnames(sub_endsa)<-c("edad","año_edu","edad_1naci","tot_niños")
names(sub_endsa)
pca<-PCA(sub_endsa)
explor(pca)
#2
#6=sexo
#17=usod e algun metodo anticonceptivo
sub2_endsa<-endsa[,c(6,17)]
colnames(sub2_endsa)<-c("sexo","met_anticoncep")
ca_simple<-MCA(sub2_endsa)
explor(ca_simple)
#3  Elegir 4 variables cualitativas y generar 
#el dashboard para el análisis de correspondencia múltiple
#3=area
#6=sexo
#10=alfabetismo
#23=estado civil actual
sub3_endsa<-endsa[,c(3,6,10,23)]
colnames(sub3_endsa)<-c("area","sexo","alfabetismo","estado civil")
mca<-MCA(sub3_endsa)
explor(mca)
