#02/10/23

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# hipotesis ---------------------------------------------------------------

#Hipotesis nula: La correlacion es igual 0
#Hipotesis alternativa: La correlcion verdadera no es igual a 0 




# correlacion -------------------------------------------------------------

#¿Cuál es el coeficiente de correlación (r)?
  cor.test(erupciones$eruptions, erupciones$waiting)
#t= 24.089, df= 270, p-value <- 2.2e-16
 # cor 0.9008112 

#¿Es significativa la correlación?
 # Si porque es mayor que 0.5 por lo que no se puede rechazar




# estadisticas descriptivas  ----------------------------------------------

mean(erupciones$eruptions) # 3.487783
mean(erupciones$waiting) # 70.89706

sd(erupciones$eruptions) #  1.141371
sd(erupciones$waiting) # 13.59497

var(erupciones$eruptions) # 1.302728.
var(erupciones$waiting) # 184.8233


# Grafica -----------------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19)


