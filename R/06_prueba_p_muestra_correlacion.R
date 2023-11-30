# Luz Elena Rodriguez Pequeño
# 02/10/2023
# Matricula: 2070472

library (repmis)
erupciones <-
  source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=
1")
## Downloading data from:
https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1
## SHA-1 hash of the downloaded data file is:
## b07708389ddf62ee20d19c759c88d7dc2d0da3ac


# Estadisticas descriptivas -----------------------------------------------


# Realizar las estadísticas descriptivas de ambas variables (media,
  desviación estándar y varianza)
mean(erupciones$eruptions) # 3.487783
## [1] 3.487783
mean(erupciones$waiting) # 70.89706
## [1] 70.89706
var(erupciones$eruptions) # 1.302728
## [1] 1.302728
var(erupciones$waiting) # 184.8233
## [1] 184.8233
sd (erupciones$eruptions) # 1.141371
## [1] 1.141371
sd (erupciones$waiting) # 13.59497
## [1] 13.5949


# Correlacion -------------------------------------------------------------

# ¿Cuál es el coeficiente de correlación (r)?
cor.test(erupciones$eruptions, erupciones$waiting)
##
## Pearson's product-moment correlation
##
## data: erupciones$eruptions and erupciones$waiting
## t = 34.089, df = 270, p-value < 2.2e-16
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
## 0.8756964 0.9210652
## sample estimates:
## cor
## 0.9008112
# t = 34.089, df = 270, p-value < 2.2e-16
# cor 0.9008112
# ¿Es significativa la correlación? Si porque es mayor que 0.5 por
tanto no se puede rechazar


# Grafica -----------------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera
entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 11)

