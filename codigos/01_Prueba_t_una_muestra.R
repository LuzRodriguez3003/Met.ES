# Luz Elena Rodriguez Pequeño
# 21/08/2023
# Matricula: 2070472

# Importar datos ----------------------------------------------------------

# Funcion read.csv (sirve para importar datos csv a R) 
setwd("C:/Repositorio_LR/Met_ES/Codigos")
mediciones <- read.csv("mediciones.csv", header = TRUE) 
head(mediciones) # funcion head (sirve para ver primeros 6 datos)



# descriptivas ------------------------------------------------------------
# medidad de tendencia central media, mediana, ramgo

mean(mediciones$alturas)
median(mediciones$alturas)
range(mediciones$alturas)

#medidad de dispersion desviacion estandar, varianza

sd(mediciones$alturas)
var(mediciones$alturas)


# graficas ----------------------------------------------------------------

boxplot(mediciones$alturas) 


# Hipotesis ---------------------------------------------------------------

# xobs = 10.17 vs xteo = 11
# plantas de ceDRO deben alcanzar una altura de 11 cm en un año de acuerdo 
# a los dichos de viversitaS  


# Procedimiento -----------------------------------------------------------

# aplicar la funcion t.test

t.test(mediciones$alturas, mu = 11)

t.test(mediciones$alturas, mu = 10.5)
 
t.test(mediciones$alturas, mu = 10.6)                 
                 
t.test(mediciones$alturas, mu = 5.5)



# Replicabilidad ----------------------------------------------------------

# Guardar la prueba de t en un objeto llamado "prueba" 
prueba <- t.test(mediciones$alturas, mu =11)
# Conocer el p-value 
prueba$p.value 

# Conocer los grados de libertad 
prueba$parameter

# Conocer intervalos de confianza 
prueba$conf.int 

