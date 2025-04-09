# visualize.R

# Charger les bibliothèques nécessaires
library(ggplot2)

# Créer un jeu de données sur les crocodiles
crocodile_data <- data.frame(
  Species = c("Saltwater crocodile", "Nile crocodile", "Orinoco crocodile", 
              "American crocodile", "Black caiman", "Gharial"),
  Average_Mass_kg = c(450, 410, 380, 336, 300, 250),
  Maximum_Mass_kg = c(2000, 1090, 1100, 1000, 1000, 1000),
  Average_Length_m = c(4.5, 4.2, 4.1, 4.0, 3.9, 4.5)
)

# Créer une visualisation avec ggplot2
plot <- ggplot(crocodile_data, aes(x = Average_Length_m, y = Average_Mass_kg)) +
  geom_point(aes(size = Maximum_Mass_kg, color = Species), alpha = 0.7) +
  labs(
    title = "Comparaison des tailles et poids des espèces de crocodiles",
    x = "Longueur moyenne (m)",
    y = "Poids moyen (kg)",
    size = "Poids maximum (kg)",
    color = "Espèce"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5),
    legend.position = "right"
  )

# Afficher le graphique
print(plot)
