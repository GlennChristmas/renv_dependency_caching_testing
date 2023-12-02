library(ggplot2)
library(dplyr)

#generate some basic summary statistics from mtcars
#add an inconsequential change

mtcars_summary <- mtcars %>% 
  select(mpg, cyl) %>% 
  group_by(cyl) %>% 
  summarise(mean_mpg = mean(mpg))

#produce a basic visualisation
#add a comment to test if gh action differs

ggplot(mtcars_summary, aes(x = cyl, y = mean_mpg)) +
  geom_col()