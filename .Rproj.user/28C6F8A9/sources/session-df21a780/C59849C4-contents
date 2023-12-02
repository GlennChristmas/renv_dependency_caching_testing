library(ggplot2)
library(dplyr)

#generate some basic summary statistics from mtcars

mtcars_summary <- mtcars %>% 
  select(mpg, cyl) %>% 
  group_by(cyl) %>% 
  summarise(mean_mpg = mean(mpg))

#produce a basic visualisation

ggplot(mtcars_summary, aes(x = cyl, y = mean_mpg)) +
  geom_col()