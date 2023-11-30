# Luz Elena Rodriguez Pequeño
# 28/10/2023
# Matricula: 2070472

# Importar datos
library(repmis)
DAP <-
  source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova
.csv?dl=1"
  )
## Downloading data from:
https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1
## SHA-1 hash of the downloaded data file is:
## 75a7b481bb1b844f43090d2711189c46afece8fa
DAP$Paraje <- as.factor(DAP$Paraje)
DAP$sP <- as.factor(DAP$SP)
# Determinar estadisticas descriptivas
boxplot(DAP$EDAD ~ DAP$Paraje)
## Chinatu Laguna Trinidad Tule
## 48.70000 30.70000 93.40000 53.13333
#48.70000 30.70000 93.40000
53.13333
tapply(DAP$EDAD, DAP$Paraje, var)
Tule
# Chinatu Laguna Trinidad
##
##
Chinatu Laguna Trinidad
837.3207 150.4931 1427.4897
Tule
998.2575
# 837.3207 150.4931 1427.4897
998.2575
# Normalidad
shapiro.test(DAP$DAP) # W = 0.96548, p-value = 0.003575, NO SON NORMALES
##
## Shapiro-Wilk normality test
##
## data: DAP$DAP
## W = 0.96548, p-value = 0.003575
hist(DAP$DAP)bartlett.test(DAP$DAP ~ DAP$Paraje) # Bartlett's K-squared = 6.6622, df
= 3, p-value = 0.08348
## Bartlett test of homogeneity of variances
##
## data: DAP$DAP by DAP$Paraje
## Bartlett's K-squared = 6.6622, df = 3, p-value = 0.08348
# Transformar DAP para cumplir normalidad
DAP$raiz <- sqrt (DAP$DAP)
hist(DAP$raiz)


# Probar normalidad a los datos transformados (Raiz cuadrada)
shapiro.test(DAP$raiz) # W = 0.98341, p-value = 0.1473
##
## Shapiro-Wilk normality test
##
## data: DAP$raiz
## W = 0.98341, p-value = 0.1473
# Probar homogeneidad de varianzas de los datos transforados
bartlett.test(DAP$raiz ~ DAP$Paraje)
##
## Bartlett test of homogeneity of variances
##
## data: DAP$raiz by DAP$Paraje
## Bartlett's K-squared = 7.6911, df = 3, p-value = 0.05285

# Bartlett's K-squared = 7.6911, df = 3, p-value = 0.05285
dap.aov <- aov
dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
# Df Sum Sq Mean Sq F value Pr(>F)
summary (dap.aov)
##
## DAP$Paraje
## Residuals
## ---
Df Sum Sq Mean Sq F value Pr(>F)
3
116
84.09
97.94
28.029
0.844
33.2 1.45e-15 ***
  ## Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
  # Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  boxplot(DAP$raiz ~ DAP$Paraje)
# 84.09/3: 28.03
# 97.94/116: 0.8443103
# 28.029/0.844: 33.20972
# Encontrar las diferencias significativas

TukeyHSD(dap.aov)
## Tukey multiple comparisons of means
## 95% family-wise confidence level
##
## Fit: aov(formula = DAP$raiz ~ DAP$Paraje)
##
##
##
$`DAP$Paraje`
diff lwr upr p adj
## Laguna-Chinatu -0.7331899 -1.351610796 -0.1147691 0.0131794
## Trinidad-Chinatu 1.5391985 0.920777631 2.1576194 0.0000000
## Tule-Chinatu -0.1190328 -0.737453617 0.4993881 0.9585122
## Trinidad-Laguna 2.2723884 1.653967564 2.8908093 0.0000000
## Tule-Laguna 0.6141572 -0.004263685 1.2325780 0.0523230
## Tule-Trinidad -1.6582312 -2.276652111 -1.0398104 0.0000000
# diff lwr upr p adj
# Laguna-Chinatu -0.7331899 -1.351610796 -0.1147691 0.0131794
# Trinidad-Chinatu 1.5391985 0.920777631 2.1576194 0.0000000
# Tule-Chinatu -0.1190328 -0.737453617 0.4993881 0.9585122
# Trinidad-Laguna 2.2723884 1.653967564 2.8908093 0.0000000
# Tule-Laguna 0.6141572 -0.004263685 1.2325780 0.0523230
# Tule-Trinidad -1.6582312 -2.276652111 -1.0398104 0.0000000         