#crear una funcion que calcule los quantiles para tablas
#de frecuencias con intervalos de clases
#sea x una matriz con:
# columna 1: limite inferior ->Li
# columna 2 : limite superior->Ls
#columna 3: freciencia absoluta->f
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
  q<-q/100
  x<-n*q
  #frecuencia acumulada aux
  for (i in 1:k) {
    F[i]<-sum(tf[1:i,3])
    
  }
  #encontradno el intervalo del cuantil
  for (i in 1:k) {
    if(F[i]>x){
      c<-tf[i-1,2]-tf[i-1,1]
      Linf<-tf[i-1,1]
      acumF<-F[i-2]
      fi<-tf[i-1,3]
      i<-k+1
    }
    
    
  }
  
  v<-Linf+(x-acumF)*c/fi
  return(v)
}
z<-cuantil(y,4)
z
