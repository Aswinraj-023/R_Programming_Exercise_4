#ggplot
library(tidyverse)
library(ggplot2)
datasets::iris
ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+
  geom_point(size=5)+
  geom_line(colour="red")
