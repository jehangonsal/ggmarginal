
### Create new ggExtra plot

# load package and data
library(tidyverse)
library(ggExtra)
library(ggalt)
library(RColorBrewer)

# Scatterplot with iris

plot1 <- iris %>% ggplot(aes(x = Sepal.Length, y = Petal.Length
                             , colour = Species, fill = Species)) + 
  geom_point() + 
  geom_encircle(alpha = .2) +
  theme_classic() + 
  labs(x = "Sepal Length", y = "PetalLength") +
  scale_fill_brewer(palette="Set1") +
  scale_colour_brewer(palette="Set1")


ggMarginal(plot1, type = "histogram", groupFill = TRUE, bins = 20) 
