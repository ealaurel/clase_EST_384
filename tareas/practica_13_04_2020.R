rm(list = ls())
x<-matrix(c(13,15,17,19,21,15,17,19,21,23,4,9,3,3,1),5,3)
x
y<-as.data.frame(x)
y
names(y)[c(1,2,3)]<-c("Li","Ls","f")
str(y)
typeof(y)
y
sum(y[1:2,3])
cuantil<-function(tf,q){
  #k:numero de intervalos
  #n:frecuencia absoluta total
  #c: ancho de clase del intervalo 
  #Linf: limite inferior i_esimo
  #acumF: fecuencia acumulada anterior al intervalo 
  #fi: fec absoluta del intervalo i-esimo
  #tf:tabla de fecuencias
  #v:valor delcuntil a encontrar
  k<-nrow(y)
  n<-sum(tf[,3])
  #q<-q/100
  x<-n*q/100
  #frecuencia acumulada aux
  for (i in 1:k) {
    F[i]<-sum(tf[1:i,3])
    
  }
  
  i=1#contador del intervalo buscado
  while (F[i]<=x) {
    i=i+1
    
  }
  
  Linf<-tf[i,1]
  if(i==1){
    acumF<-0}
  else{
    acumF<-F[i-1]}
  fi<-tf[i,3]
  c<-tf[i,2]-tf[i,1]
 
   v<-Linf+(x-acumF)*c/fi
  return(v)
}
z<-cuantil(y,4)
z
