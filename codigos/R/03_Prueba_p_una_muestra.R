# Luz Elena Rodriguez Pequeño
# 21/08/2023
# Matricula: 2070472


# Importar datos ----------------------------------------------------------

setwd("C:/Repositorio_LR/Met_ES/codigos")
Alturas <- read.csv("tratamientos.csv", header = T)


# Descriptivas ------------------------------------------------------------

# Usar la libreria dyplir para seleccionar datos mediante restricciones

library(dplyr)
Alturas %>% 
  filter(Tratamiento == "Fert")

Alturas %>% 
  filter(Tratamiento == "Ctrl")
Ctrl <- Alturas %>% 
  filter(Tratamiento == "Ctrl")
Fert <- tratamientos %>% 
  filter(Tratamiento == "Fert")
mean(Ctrl$Alturas)
mean(Fert$Alturas)


Alturas %>% 
  group_by(Tratamiento) %>% 
  summarise(Alturas)
mean = (Alturas)
median = (Alturas)
sd = (Alturas)
var = (Alturas)

# Tratamiento    n    media   sd     var
#1 a            30    39.8    4.90   24.1
# 2 b           30    45.9    4.17  17.4


# Grafica -----------------------------------------------------------------

boxplot(tratamientos$Alturas ~ tratamientos$Tratamiento) 
xlab = "Tratamiento"
ylab = "Indice Alturas"
              
            
            


