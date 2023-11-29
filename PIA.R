#LUZ ELENA RODRÍGUEZ PEQUEÑO
#2070472
#28/11/23
#PIA


# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_LR/Met_ES/codigos")
climas <- read.csv("climas.csv", header = TRUE) 
head(climas)


# descriptivas ------------------------------------------------------------
# medidad de tendencia central media, mediana, rango
#Tmax
mean(climas$Tmax) #28.65161
median(climas$Tmax) #32.3
range(climas$Tmax) #0.0 39.3

#Tmin

mean(climas$Tmin) #16.53871
median(climas$Tmin) #18.6
range(climas$Tmin) #0.0 39.3


# medidad de dispersion desviacion estandar, varianza ---------------------
#Tmax
sd(climas$Tmax) #9.005068
var(climas$Tmax)#81.09125
#Tmin
sd(climas$Tmin) #5.429775
var(climas$Tmin) #29.48245


# Grafica -----------------------------------------------------------------

boxplot(climas$Tmax)
boxplot(climas$Tmin)



# Hipotesis ---------------------------------------------------------------

#Tmax = 33 vs Tmin = 18.6
#La temperaturas han incrmentado hasta 33 grados según la estación meteorologica de la facultad por lo que es una hipotesis alternativa 


# Procedimiento -----------------------------------------------------------

t.test(climas$Tmax, mu = 33)
#t = -2.6886, df = 30, p-value = 0.0116
t.test(climas$Tmax, mu = 32.5)
#t = -2.3794, df = 30, p-value = 0.0239
t.test(climas$Tmax, mu = 32.6) 
#t = -2.4413, df = 30, p-value = 0.02075
t.test(climas$Tmax, mu = 16.5)
#t = 7.5132, df = 30, p-value = 2.243e-08


# Recapibilidad -----------------------------------------------------------

#Guardar la prueba t en un objeto llamado "prueba"
prueba <- t.test(climas$Tmax, mu =33)

#Conocer el p-value
prueba$p.value #0.01159886

# Conocer los grados de libertad 
prueba$parameter #df 
30

# Conocer intervalos de confianza 
prueba$conf.int #0.95


# Correlación -------------------------------------------------------------
cor.test(climas$Tmax, climas$Tmin)

#t=8.3631, df = 29, p-value = 3.225e-09
# cor 0.8407716 
#¿Es significativa la correlación?
# Si porque es mayor que 0.5 por lo que no se puede rechazar

#estadisticas descriptivas
mean(climas$Tmax) #28.65161
mean(climas$Tmin) #16.53871

sd(climas$Tmax) # 9.005068
sd(climas$Tmin) #5.429775

var(climas$Tmax)#81.09125
var(climas$Tmin) #29.48245


# Grafica -----------------------------------------------------------------

plot(climas$Tmax, climas$Tmax, xlab = "Tmx", 
     ylab = "Tmin", pch = 19)


# R Lineal ----------------------------------------------------------------

climas.lm <- lm (climas$Tmax ~ climas$Tmin)

climas.lm # obtenemos el valor de alfa y beta

summary(climas.lm) # obtenemos la significancia

climas$yprima <- 5.590 + 1.394*climas$Tmax
climas$estimados <- climas.lm$fitted.values


