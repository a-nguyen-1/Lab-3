# Load all necessary libraries
library(tidyverse)
library(palmerpenguins)

#Remove NAs
pgs <- penguins %>% drop_na

# Plot bill length and bill depth, color by species
pgs %>% 
  ggplot() +
  geom_point(aes(x = bill_length_mm, y = bill_depth_mm, color = species))