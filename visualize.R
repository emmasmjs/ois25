#avec plot()
vx <- 1:30
vy <- numeric(30)  

for (i in seq_along(vx)) {
    if (vx[i] <= 15) {
        vy[i] <- vx[i] * 3 - 12
    } else {
        vy[i] <- cos(vx[i]) + 1
    }
}

plot(vx,vy,
    xlab = "axe x",
    ylab = "axe y",
    main = "Représentation de y en fonction de x",
    col = "red",
    type = "l"
    )

#avec un plot plus complexe
library(ggplot2)
library(dtables)

head(iris2, n = 10)

ggplot(iris2, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Comparaison de Petal.Length entre espèces", 
       x = "Espèce", 
       y = "Longueur du pétale") +
  theme_minimal()