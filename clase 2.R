vector= 1:10
for (numero in vector){
  print (numero)
}

for (numero in vector){
  print (paste("mi iteracion va en ",numero))
}


for (numero in vector){
  variable=paste("mi iteracion es :", numero)
  print (variable)
}

nuevo_vector= NULL
for (numero in vector){
  nuevo_vector=append(nuevo_vector, numero*2)
  
}

umbral= 5
valor= 0

while (valor< umbral) {
  
  print("hola soy un while")
  valor= valor+1
}

#cargar datos : en la carpeta de r tengamos una carpeta con data 
dimension_tabla = dim(train_data_final_copia )

nrow(train_data_final_copia)

columnas=names(train_data_final_copia)

summary(train_data_final_copia)

#creacion de pivot tables (comand shift m %>% )
library(tidyverse)

resumen = train_data_final_copia %>% filter(estrato== "3")
resumen_1= train_data_final_copia %>% filter(estrato== "3"), tiponegocio==Arriendo)
$git
