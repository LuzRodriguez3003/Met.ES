# Luz Elena Rodriguez Pequeño
# 10/10/2023
# Análisis de varianza 
#ANOVA


# Importar datos ---------------------------------------------------

library(repmis)
DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor(DAP$SP)
# Determinar estadisticas descriptivas  -----------------------------------


boxplot(DAP$EDAD ~ DAP$Paraje)
boxplot(DAP$DAP  ~ DAP$Paraje)

tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)


# Normalidad --------------------------------------------------------------

shapiro.test(DAP$DAP)
hist(DAP$DAP)

#los datos del del DAP no son normales 
bartlett.test(DAP$DAP ~ DAP$Paraje)
# la varianza de los tratamientos son iguales


# Transformar DAP para cumplir normalidad  --------------------------------

DAP$raiz <- sqrt(DAP$DAP)
hist(DAP$raiz)


# probar normalidad a los datos transformados(Raiz cuadrada) --------------
shapiro.test(DAP$raiz)
# los datos son normales


# Probar homogenidad de varianza de los datos transformados ----------------

bartlett.test(DAP$raiz ~ DAP$Paraje)


dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot(DAP$raiz ~ DAP$Paraje)

TukeyHSD(dap.aov)

# Graficar las diferencias significativas ---------------------------------


plot(TukeyHSD(dap.aov))


