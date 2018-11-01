library(ggplot2)
library(maps)

all_coords_data <- readRDS("all_coords_data.rds")

# MEDIAN INCOME
ggplot(all_coords_data) + 
  geom_polygon(mapping = aes(x = long, y = lat, group = group, 
                             fill = `Median Household Income (2016)`), size = 0.5, color = "grey" ) +
  coord_quickmap() + 
  theme_void() + theme(legend.text = element_text(angle = 90, hjust = 1), legend.position = 'top') +
  scale_colour_discrete(guide="none")+
  scale_fill_viridis_c() + facet_wrap(state~.)

ggsave(filename = "income2.png", width = 32, height = 32)

## WATER USE ----
ggplot(all_coords_data) + 
  geom_polygon(mapping = aes(x = long, y = lat, group = group,
                             fill = `Domestic per capita use, public-supplied, in gallons/person/day`), 
               size = 0.5 , color = "grey") +
  coord_quickmap() + 
  theme_void() + theme(legend.text = element_text(angle = 90, hjust = 1), legend.position = "top") +
  scale_colour_discrete(guide="none")+
  scale_fill_viridis_c(option = "A", direction = -1) + facet_wrap(.~state)

ggsave(filename = "water.png", width = 32, height = 32)

## POLITICAL PARTY ----
ggplot(all_coords_data) + 
  geom_polygon(mapping = aes(x = long, y = lat, group = group,
                             fill = party), size = 0.5, color = "grey" ) +
  scale_fill_manual(values = c("red", 'blue')) +
  coord_quickmap() + 
  theme_void() + theme(legend.position="top")  + facet_wrap(.~state)

ggsave(filename = "party.png", width = 32, height = 32)

# Population ----
ggplot(all_coords_data) + 
  geom_polygon(mapping = aes(x = long, y = lat, group = group,
                             fill = `Population (January 2018)`), 
               size = 0.7 , color = "grey") +
  coord_quickmap() + 
  theme_void() + theme(legend.text = element_text(angle = 90, hjust = 1), legend.position = "top") +
  scale_colour_discrete(guide="none")+
  scale_fill_viridis_c(option = "D", direction = 1) + facet_wrap(.~state)

ggsave(filename = "population.png", width = 32, height = 32)