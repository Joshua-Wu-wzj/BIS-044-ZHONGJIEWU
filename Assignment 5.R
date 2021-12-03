library(readr)
dataset2 <- read_csv("TBQ05.20211116133909.csv")
if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

VALUE <- dataset2[10]
as.numeric(unlist(VALUE))
dataset2[is.na(dataset2)] <- "0"
View(dataset2)

#-5 push data, -5 as.numeric(), -10 by(), -10 ggplot()