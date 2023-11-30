#LUZ ELENA RODRÍGUEZ PEQUEÑO
#2070472
#29/11/2023
#Examen final

# importar ----------------------------------------------------------------

setwd("C:/Repositorio_LR/Met_ES/codigos")
madera <- read.csv("madera.csv", header = TRUE) 
head(madera)


# PARTE 1 -----------------------------------------------------------------



# descriptivas ------------------------------------------------------------

mean(madera$Encino) #17.46
median(madera$Encino) #17.3
range(madera$Encino) 

mean(madera$Pino) #12.68
median(madera$Pino) #12.5
range(madera$Encino)


# grafica -----------------------------------------------------------------

boxplot(madera$Encino, madera$Pino , xlab = "encino", 
        ylab = "pino", pch = 19)



# PARTE 2 -----------------------------------------------------------------


# hipotesis ---------------------------------------------------------------
#17.3 vs 12.5
#la madera de la especie de encino pesa mas que la de pino segun los datos proporcionados 


# procedimiento -----------------------------------------------------------
t.test(madera$Encino, mu = 17)
#t = 3.3907, df = 29, p-value = 0.002029
t.test(madera$Encino, mu = 16.5)
#t = 7.0763, df = 29, p-value = 8.743e-08
t.test(madera$Encino, mu = 16.6)
#t = 6.3392, df = 29, p-value = 6.308e-07
t.test(madera$Encino, mu = 8.5)
#t = 66.046, df = 29, p-value < 2.2e-16

t.test(madera$Pino, mu = 13)
#t = -1.5971, df = 29, p-value = 0.1211
t.test(madera$Pino, mu = 13.5)
#t = -4.0925, df = 29, p-value = 0.000311
t.test(madera$Pino, mu = 13.6)
#t = -4.5916, df = 29, p-value = 7.882e-05
t.test(madera$Pino, mu = 6.5)
#t = 30.843, df = 29, p-value < 2.2e-16


# recapibilidad -----------------------------------------------------------

#Guardar la prueba t en un objeto llamado "prueba"
prueba <- t.test(madera$Encino, mu =17)

#Conocer el p-value
prueba$p.value 
#0.002028846

# Conocer los grados de libertad 
prueba$parameter
#df 29

# Conocer intervalos de confianza 
prueba$conf.int
#17.18254 17.73746 #0.95


# PARTE 3 -----------------------------------------------------------------

# importar ----------------------------------------------------------------

setwd("C:/Repositorio_LR/Met_ES/codigos")
emiciones <- read.csv("emiciones.csv", header = TRUE) 
head(emiciones)

mean(emiciones$azufre) #18.7075
median(emiciones$azufre)#18.8

t.test(emiciones$azufre, mu = 19)
#t = -0.32359, df = 39, p-value = 0.748

#valor de p----------------------------------------------------------------
#p-value = 0.748

# Resultado ---------------------------------------------------------------

#el valor de las emiciones de óxido de azufre registradas si son significativamente mayores a los valores registrados por la empresa 
#valor de la empresa 17.5 T/año
#valor calculado 18.70 T/año



