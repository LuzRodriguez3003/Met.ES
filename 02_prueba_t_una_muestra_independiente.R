#Luz Elena Rodriguez Pequeño
#28/08/2023
#Matricula:2070472

# Dos tratamientos ctrl y fertl, un grupo de plantas 
# Prueba de t independiente 

#Importar-----------------------------------------------------------------------
setwd("C:/Repositorio_LR/Met_ES/Codigos")
vivero <- read.csv(IE.csv , header = T)


# Descriptivas  -----------------------------------------------------------

#Usar la libreria dplyr para seleccionar datos mediante 
#restricciones 

library(dplyr)
IE %>% 
  filter(Tratamiento == "Ctrl")


IE %>% (dplyr)
  filter(Tratamiento == "Fert")

  Ctrl <- IE %>% 
    filter(Tratamiento == "Ctrl")
  Fert <- vivero %>% 
    filter(Tratamiento == "Fert")
mean(Ctrl$IE)
mean(Fert$IE)

IE %>% 
  group_by(Tratamiento)%>% 
  summarise(IE)
  sd = sd(IE)
  var = var(IE)
  

# Grafica -----------------------------------------------------------------


  
  