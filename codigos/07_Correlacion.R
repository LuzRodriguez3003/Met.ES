

# Importar ----------------------------------------------------------------


setwd("C:/Repositorio_LR/Met_ES/codigos")

canopy <- read.csv("canopy.csv" , header = T)
canopy$Forest <- as.factor(canopy$Forest)


# Grafica -----------------------------------------------------------------

plot(canopy$Cnpy, canopy$LAI4)
#Aplicacion negativa entre cnpy vs LAI4
plot(canopy$Cnpy, canopy$GLI)
#Asociacion positiva cnpy vs GLI (luz que llega al suelo)
plot(canopy$LAI4, canopy$GLI)
#Asociacion negativa entre LAI4 VS GLI

cor.test(canopy$Cnpy, canopy$LAI4)


# Personalizar gracfica  --------------------------------------------------

plot(canopy$Cnpy, canopy$LAI4)
     xlab = "Apertura dosel (%)"
     ylab = "Area Foliar"
     
 
