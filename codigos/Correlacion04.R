
# Conjunto de datos para correlacion --------------------------------------

#26/09/2023


# Crear la base de datos  -------------------------------------------------

x <- c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8)
y <- c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.50, 5.56, 7.91, 6.8)



# Crear un data.frame con las variables x and y ---------------------------

d4 <- data.frame(x,y)
d4


# Estadisticas descriptivas -----------------------------------------------

mean(d4$x); var(d4$x)
mean(d4$y); var(d4$y)


# Aplicar Correlacion -----------------------------------------------------

cor.test(d4$x, d4$y)


# Grafica -----------------------------------------------------------------

plot(d4$x, d4$Y) 





