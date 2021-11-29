library(readr)
dataset2 <- read_csv("TBQ05.20211116133909.csv")
if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

dataset2[is.na(dataset2)] <- "0"

as.numeric((dataset2[VALUE]))
View(dataset2)