library(tidyverse)
murders<-read.csv("data/murders.csv")
view(murders)
murders<-murders %>% 
  mutate(region=factor(region),
         rate=total/population*10^5)
view(murders)
save(murders, file="rda/murders.rda")
