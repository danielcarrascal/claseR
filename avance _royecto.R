#libraries
library(tidyverse)
#limpieza de datos: empece modificando las celdas NA convieritnedolas en 0 para que la visualización de variables categoricas se pudiera realizar
 train_data_final_copia <- mutate_all(train_data_final_copia, ~replace(., is.na(.), 0))
 
df_nuevo=train_data_final_copia

df_nuevo

#limpieza de datos ilogicos en la tabla 
df_nuevo= df_nuevo %>% filter(area != 0 & estrato > 0) %>%   
  mutate(V2 = str_to_title(V2))  


#analisis y revision de la base de datos
dim(df_nuevo)

ncol(df_nuevo)
#me permitira conocer los nombres de las columnas y asi poder indagar mejor
nombres_col=names(df_nuevo)

#intento de cambiar a√±os" a  "Años"
cambio=names(df_nuevo$tiempodeconstruido)
cambio=gsub("a√±os","Años",cambio)
names(df_nuevo$tiempodeconstruido)<- cambio


df_nuevo$area[1]
df_nuevo$area[4]
df_nuevo$area[5]
df_nuevo$area[3]
#resumen 
summary(df_nuevo)

resumen$area
#resumenes por estratos


resumen1=df_nuevo %>%  filter(estrato==3)
info_estr456=df_nuevo %>%  filter(estrato>3)

df_nuevo$conjuntocerrado
#table pivot con:desde estrato 3 y que sea un conjunto cerrado
resumen3=df_nuevo %>%  filter(estrato>=3 ,conjuntocerrado==1)

#table pivot con:apartamentos estrato 3 , que sea conjunto cerrado,tiempodeconstruido "1 a 8 a√±os" y que sea un  "Apartamento
busqueda1=df_nuevo %>%  filter(estrato==3 ,conjuntocerrado==1,
                        tiempodeconstruido=="1 a 8 a√±os" ,tipoinmueble=="Apartamento")

busqueda2=df_nuevo %>%filter(tiponegocio=="Arriendo", area>100) %>% group_by(tipoinmueble)
                   %>% summarise(suma_valor=sum(valorventa))

df_nuevo$valorventa

#graficos y exploracion de visualizacion 

subset_df= df_nuevo %>% select(id,valorventa,tipoinmueble,tiponegocio,tiponegocio,
                               vista,habitaciones,area,valoradministracion,estrato)
#buscar si se puede corregir las dimensiones de los graficos
hist(x=subset_df$valorventa)

hist(x=subset_df$valoradministracion, main= "histograma de pago administracion"
        xlab= "precio administración mensual", ylab="frecuncia")
subset_df

#grafico de barras
plot(x=subset_df$estrato)




